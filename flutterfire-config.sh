#!/bin/bash
# Script to generate Firebase configuration files for different environments/flavors
# Feel free to reuse and adapt this script for your own projects

if [[ $# -eq 0 ]]; then
  echo "Error: No environment specified. Use 'dev', 'stg', or 'prod'."
  exit 1
fi

case $1 in
  dev)
    flutterfire config \
      --project=bpm-dev-71dd4 \
      --out=lib/firebase_options_dev.dart \
      --ios-bundle-id=com.rennes.assoshare.dev \
      --ios-out=ios/flavors/dev/GoogleService-Info.plist \
      --android-package-name=com.rennes.assoshare.dev \
      --android-out=android/app/src/dev/google-services.json
    ;;
  sta)
    flutterfire config \
      --project=bpm-sta \
      --out=lib/firebase_options_stg.dart \
      --ios-bundle-id=com.rennes.assoshare.sta \
      --ios-out=ios/flavors/stg/GoogleService-Info.plist \
      --android-package-name=com.rennes.assoshare.sta \
      --android-out=android/app/src/stg/google-services.json
    ;;
  prod)
    flutterfire config \
      --project=bpm-prod-df16a \
      --out=lib/firebase_options_prod.dart \
      --ios-bundle-id=com.rennes.assoshare \
      --ios-out=ios/flavors/prod/GoogleService-Info.plist \
      --android-package-name=com.rennes.assoshare \
      --android-out=android/app/src/prod/google-services.json
    ;;
  *)
    echo "Error: Invalid environment specified. Use 'dev', 'stg', or 'prod'."
    exit 1
    ;;
esac