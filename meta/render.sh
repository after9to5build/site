#!/bin/bash
# Render meta image & favicon dari file HTML pakai Chrome headless.
# Jalanin: bash render.sh (dari folder ini)
cd "$(dirname "$0")"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
render() { # $1=html $2=png $3=lebar $4=tinggi
  "$CHROME" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=1 \
    --virtual-time-budget=6000 --window-size="$3,$4" --screenshot="$PWD/$2" "file://$PWD/$1" 2>/dev/null
}
render og-image.html og-image.png 1200 630
render favicon.html favicon.png 512 512
render expense-tracker-cover.html expense-tracker-cover.png 1080 1080
render notulen-rapat-cover.html notulen-rapat-cover.png 1080 1080
echo "Selesai: og-image.png, favicon.png, expense-tracker-cover.png, notulen-rapat-cover.png"
