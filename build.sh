#!/bin/sh
# index.html (artifact kaynağı) -> docs/index.html (GitHub Pages için tam sayfa)
set -e
cd "$(dirname "$0")"
mkdir -p docs
{
  printf '%s' '<!doctype html><html lang="tr"><head><meta charset="utf-8">'
  printf '%s' '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">'
  printf '%s' '<meta name="theme-color" content="#EEF1FB" media="(prefers-color-scheme: light)">'
  printf '%s' '<meta name="theme-color" content="#13132B" media="(prefers-color-scheme: dark)">'
  printf '%s' '<meta name="description" content="Çocukların kendi kahramanını seçip masala yön verdiği interaktif masal uygulaması.">'
  printf '%s' '<meta name="apple-mobile-web-app-capable" content="yes"><meta name="mobile-web-app-capable" content="yes">'
  printf '%s' '<meta name="apple-mobile-web-app-title" content="Masal Fabrikası">'
  printf '%s' '<link rel="manifest" href="manifest.webmanifest"><link rel="icon" href="favicon.png"><link rel="apple-touch-icon" href="apple-touch-icon.png">'
  printf '%s' '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%}[hidden]{display:none!important}</style>'
  printf '%s' '</head><body>'
  cat index.html
  printf '%s' '</body></html>'
} > docs/index.html
echo "docs/index.html hazır"
