#!/bin/sh

for f in *.MPO; do mpo2img -format red-cyan -outfile "${f%.MPO}_anaglyph.jpg" "$f"; done
