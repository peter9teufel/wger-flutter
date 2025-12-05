#!/bin/bash
SOURCE_IOS="../fastlane/metadata/ios/de-DE/images/iPhone 6.9"
SOURCE_ANDROID_TABLET="../fastlane/metadata/android/de-DE/images/tenInchScreenshots"
TARGET="./fastlane/screenshots/de-DE"

echo "Removing old screenshots from ios fastlane folder..."
rm -rf "$TARGET"/*
mkdir -p "$TARGET"

echo "Generating blurred background iPhone screenshots (55 + 67) into $TARGET..."

i=0
for img in "$SOURCE_IOS"/*.{png,jpg,jpeg,PNG,JPG,JPEG}; do
  [ -e "$img" ] || continue  # skip if no match

  echo "Processing iPhone source: $img"

  out67="$TARGET/${i}_APP_IPHONE_67_${i}.jpg"
  out55="$TARGET/${i}_APP_IPHONE_55_${i}.png"

  # --- iPhone 6.7 (1290x2796) with blurred background ---
  magick "$img" \
    \( -clone 0 -resize 1290x2796^ -gravity center -extent 1290x2796 -blur 0x40 -fill black -colorize 20 \) \
    \( -clone 0 -resize x2796 \) \
    -delete 0 -gravity center -compose over -composite \
    "$out67"

  # --- iPhone 5.5 (1242x2208) with blurred background ---
  magick "$img" \
    \( -clone 0 -resize 1242x2208^ -gravity center -extent 1242x2208 -blur 0x40 -fill black -colorize 20 \) \
    \( -clone 0 -resize x2208 \) \
    -delete 0 -gravity center -compose over -composite \
    "$out55"

  i=$((i+1))
done

echo "Generating blurred background iPad Pro 12.9\" screenshots from Android tablet sources..."

j=0
for img in "$SOURCE_ANDROID_TABLET"/*.{png,jpg,jpeg,PNG,JPG,JPEG}; do
  [ -e "$img" ] || continue  # skip if no match

  echo "Processing iPad source (Android tablet): $img"

  out_ipad="$TARGET/${j}_APP_IPAD_PRO_3GEN_129_${j}.png"

  # Detect orientation using ImageMagick
  # (gets width and height of the source image)
  dimensions=$(magick identify -format "%w %h" "$img" 2>/dev/null || echo "")
  if [ -n "$dimensions" ]; then
    read img_w img_h <<< "$dimensions"
    if [ "$img_w" -ge "$img_h" ]; then
      # Landscape source -> create landscape iPad screenshot (2732x2048)
      target_w=2732
      target_h=2048
      fg_resize="${target_w}x"   # match width
    else
      # Portrait source -> create portrait iPad screenshot (2048x2732)
      target_w=2048
      target_h=2732
      fg_resize="x${target_h}"  # match height
    fi
  else
    # Fallback: portrait if identify fails
    target_w=2048
    target_h=2732
    fg_resize="x${target_h}"
  fi

  # --- iPad Pro 12.9 with blurred background, orientation-aware ---
  magick "$img" \
    \( -clone 0 -resize ${target_w}x${target_h}^ -gravity center -extent ${target_w}x${target_h} -blur 0x40 -fill black -colorize 20 \) \
    \( -clone 0 -resize "$fg_resize" \) \
    -delete 0 -gravity center -compose over -composite \
    "$out_ipad"

  j=$((j+1))
done

echo "✔ Finished generating iPhone + iPad screenshots in $TARGET"