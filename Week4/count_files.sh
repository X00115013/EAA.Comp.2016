#!/bin/bash/

echo "Count Script"

#./count_files.sh/bin

echo $(find . -type f | grep -v .git | wc -l)

echo $(find . -type f | grep -v /bin | wc -l)

echo "End of script"

