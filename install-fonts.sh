#!/usr/bin/env bash


installFonts() {
  echo "Installing fonts..."

  FONT_DIR="$HOME/.local/share/fonts"
  mkdir -p "$FONT_DIR"

  # Outlined
  curl -L -o "$FONT_DIR/MaterialSymbolsOutlined.ttf" \
  https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf

  # Rounded
  curl -L -o "$FONT_DIR/MaterialSymbolsRounded.ttf" \
  https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf

  # Sharp
  curl -L -o "$FONT_DIR/MaterialSymbolsSharp.ttf" \
  https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf

  # Refresh cache
  echo "Refreshing font cache"
  
  fc-cache -fv > /dev/null

  echo "Done installing fonts"
}

init () {
  installFonts
}

init