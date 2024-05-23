#!/bin/bash

mkdir -p release

create-dmg \
  --volname "Cubichi" \
  --window-pos 200 120 \
  --window-size 800 400 \
  --icon-size 100 \
  --icon "Cubichi.app" 200 190 \
  --hide-extension "Cubichi.app" \
  --app-drop-link 600 185 \
  --skip-jenkins \
  release/Cubichi.dmg \
  Cubichi.app
