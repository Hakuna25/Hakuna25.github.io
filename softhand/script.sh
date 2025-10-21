#!/bin/bash
# Remove audio from all .webm files under material folder

mkdir -p material/noaudio

for f in material/*.webm; do
  echo "Processing $f ..."
  ffmpeg -i "$f" -c:v copy -an "material/noaudio/$(basename "$f")"
done

echo "✅ Done! All files saved to material/noaudio/"
