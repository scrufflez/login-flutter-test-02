#!/bin/bash
set -e

# Install Flutter if not present
if ! command -v flutter &> /dev/null; then
  echo "[build] Installing Flutter..."
  git clone https://github.com/flutter/flutter.git --depth 1 -b stable /tmp/flutter
  export PATH="/tmp/flutter/bin:$PATH"
  flutter config --enable-web --no-analytics
fi

flutter pub get
flutter build web
