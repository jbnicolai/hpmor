#!/bin/bash
#
# transforms all text chapters under chapter/NUM.txt to epub/NUM.epub
#
# note: untested

for chapter in $(ls chapter/); do
  ebook-convert chapter/$chapter epub/${chapter%.txt}.epub
done
