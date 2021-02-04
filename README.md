# Cloudinary image scripts

Simple shell scripts to generate Etsy-ready framed and cropped product images from Cloudinary.

zls.sh - Landscape 8x10 frame
spt.sh - Portrait 8x10 frame
zpta.sh - Portrait A4 frame
zsq.sh - Square frame

## Usage

sh [script name] [start no] [stop no] [series name] [output filename]

For example

```
sh zls.sh 1 20 Buttterflies_8x10 Butterflies
```

This will iterate from Buttterflies_8x10_1 to Buttterflies_8x10_20 and output Buttterflies_1 etc.
