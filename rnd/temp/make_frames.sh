#!/bin/bash

# input files
src1="aaa.png"
src2="bbb.png"

# total frames
total=150

for i in $(seq 1 $total); do
  if (( i % 2 == 1 )); then
    # odd frame → image.png
    cp "$src1" "frame_${i}.png"
  else
    # even frame → image2.png
    cp "$src2" "frame_${i}.png"
  fi
done

echo "✅ Created $total frames (odd = image.png, even = image2.png)"
