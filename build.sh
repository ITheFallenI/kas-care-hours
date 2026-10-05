#!/bin/sh
# Wraps src/app.html in a full PWA page and writes the site to dist/.
set -e
cd "$(dirname "$0")"
mkdir -p dist
{
  printf '%s\n' '<!doctype html>' '<html lang="en-GB">' '<head>' \
    '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' \
    '<meta name="theme-color" content="#2f6f5e">' \
    '<meta name="apple-mobile-web-app-capable" content="yes">' \
    '<meta name="mobile-web-app-capable" content="yes">' \
    '<meta name="apple-mobile-web-app-title" content="Care Hours">' \
    '<link rel="manifest" href="manifest.webmanifest">' \
    '<link rel="icon" href="icon-192.png">' \
    '<link rel="apple-touch-icon" href="apple-touch-icon.png">' \
    '<style>:root{padding-top:env(safe-area-inset-top,0px)}[hidden]{display:none!important}</style>' \
    '</head>' '<body>'
  cat src/app.html
  printf '%s\n' "<script>if('serviceWorker' in navigator){navigator.serviceWorker.register('sw.js').catch(function(){});}</script>" '</body>' '</html>'
} > dist/index.html
cp -r static/. dist/
