#!/bin/bash

minos=10

function create_xcframework() {
  name=$1

  rm -rf "${name}.xcframework"
  rm -rf 'iphone'
  rm -rf 'simulator'

  mkdir 'iphone'
  cp -R "Carthage/Build/iOS/${name}.framework" "iphone/${name}.framework"
  lipo -remove x86_64 \
      -output "iphone/${name}.framework/${name}" \
      "iphone/${name}.framework/${name}"
  lipo -remove i386 \
      -output "iphone/${name}.framework/${name}" \
      "iphone/${name}.framework/${name}"

  mkdir 'simulator'
  cp -R "Carthage/Build/iOS/${name}.framework" "simulator/${name}.framework"
  lipo -remove armv7 \
      -output "simulator/${name}.framework/${name}" \
      "simulator/${name}.framework/${name}"

  # Hack for adding support for Apple Silicon (more info: https://bogo.wtf/arm64-to-sim-dylibs.html)
  xcrun vtool -arch arm64 \
                -set-build-version 7 ${minos} 13.0 \
                -replace \
                -output simulator/${name}.framework/${name}.reworked \
                simulator/${name}.framework/${name}

  rm simulator/${name}.framework/${name}
  mv simulator/${name}.framework/${name}.reworked simulator/${name}.framework/${name}

  xcrun codesign --sign - simulator/${name}.framework/${name}

  # -------------------
  # Package xcframework
  # -------------------

  xcodebuild -create-xcframework \
      -framework "iphone/${name}.framework" \
      -framework "simulator/${name}.framework" \
      -output "${name}.xcframework"
}

create_xcframework "GoogleMaps"
create_xcframework "GoogleMapsM4B"
create_xcframework "GooglePlaces"

# -------------------
# Base and Core are static libraries so we should use arm64-to-sim cl tool by hands.
# xcrun vtool will not work for them.
# arm64-to-sim: https://github.com/bogo/arm64-to-sim
# -------------------
# create_xcframework "GoogleMapsBase"
# create_xcframework "GoogleMapsCore"
