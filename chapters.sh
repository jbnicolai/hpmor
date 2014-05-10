#!/bin/bash
#
# called with any chapter number or series of numbers, e.g.
# ./chapters.sh 1
# ./chapters.sh 22 23 24
# ./chapters.sh {1..101}
#
# The awk and sed expressions are to trim non-story related text from the page.


for chapter in $@; do
  echo "Fetching chapter $chapter"
  lynx --dump "http://hpmor.com/chapter/$chapter" | awk '/  Chapter/{i++}i' | sed -n '/  \[/q;p' > "chapter/$chapter.txt"
done
echo "Done."
