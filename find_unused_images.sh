#!/bin/bash

# Note: Sometimes the use of some code causes images used in projects to appear in unused lists, such as [UIImage imageNamed:[NSString stringWithFormat:@"upvote_numbers_%ld", (long)n]]
#
# Usage: source find_unused_images.sh

# Your xcassets folder path, such as ./Images.xcassets
image_path='./Images.xcassets'
# The path of your source file, such as ./ExampleApp/
search_path='./ExampleApp/'
list=`find $image_path -name "*.imageset" | awk -F "/" '{print $NF}' | cut -d '.' -f 1`
for v in $list
do
    str=`grep -rn "$v" $search_path`
    len=${#str}
    if [ $len -eq 0 ]
    then
        echo $v
        `echo $v >> ~/Desktop/unused_images.txt`
    fi
done
