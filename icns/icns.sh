#!/bin/bash

sips -z 32 32  favicon.png --out imgs.iconset/icon_16x16@2x.png
sips -z 32 32  favicon.png --out imgs.iconset/icon_32x32.png
sips -z 64 64  favicon.png --out imgs.iconset/icon_32x32@2x.png
sips -z 128 128  favicon.png --out imgs.iconset/icon_128x128.png
sips -z 256 256  favicon.png --out imgs.iconset/icon_128x128@2x.png
sips -z 256 256  favicon.png --out imgs.iconset/icon_256x256.png
sips -z 512 512  favicon.png --out imgs.iconset/icon_256x256@2x.png
sips -z 512 512  favicon.png --out imgs.iconset/icon_512x512.png
sips -z 1024 1024  favicon.png --out imgs.iconset/icon_512x512@2x.png

iconutil -c icns imgs.iconset -o ./dist/favicon.icns

echo '===> done'