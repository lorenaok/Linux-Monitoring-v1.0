#!/bin/bash

dir=$1
echo "Total number of folders (including all nested ones) = $(sudo find $1 -type d | wc -l)"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "1 - $(sudo du -h $1 | sort -hr | head -1 | awk '{print $2}')," "$(sudo du -h $1 | sort -hr | head -1 | awk '{print $1}')"
echo "2 - $(sudo du -h $1 | sort -hr | head -2 | awk '{print $2}' | tail -1)," "$(sudo du -h $1 | sort -hr | head -2 | awk '{print $1}' | tail -1)"
echo "3 - $(sudo du -h $1 | sort -hr | head -3 | awk '{print $2}' | tail -1)," "$(sudo du -h $1 | sort -hr | head -3 | awk '{print $1}' | tail -1)"
echo "4 - $(sudo du -h $1 | sort -hr | head -4 | awk '{print $2}' | tail -1)," "$(sudo du -h $1 | sort -hr | head -4 | awk '{print $1}' | tail -1)"
echo "5 - $(sudo du -h $1 | sort -hr | head -5 | awk '{print $2}' | tail -1)," "$(sudo du -h $1 | sort -hr | head -5 | awk '{print $1}' | tail -1)"
echo "Total number of files = $(sudo find $1 -type f | wc -l)"
echo "Number of: "
echo "Configuration files (with the .conf extension) = $(sudo find $1 -type f -name "*.conf" | wc -l)"
echo "Text files = $(sudo find $1 -type f -name "*.txt" | wc -l)"
echo "Executable files = $(sudo find $1 -type f -executable | wc -l)"
echo "Log files (with the extension .log) = $(sudo find $1 -type f -name "*.log" | wc -l)"
echo "Archive files = $(sudo find $1 -type f -name "*.tar" -o -name "*.gzip" -o -name "*.bzip2" -o -name "*.rar" -o -name "*.zip" -o -name "*.gz" | wc -l)"
echo "Symbolic links = $(sudo find $1 -type l | wc -l)"

echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
echo "1 - $(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 1 | awk '{print $2}' | tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 1 | awk '{print $1}' | tail -1), " "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 1 | awk '{print $2}' | xargs file | awk '{print $2 $3 $4}' | tail -1)"
echo "2 - $(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 2 | awk '{print $2}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 2 | awk '{print $1}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 2 | awk '{print $2}' | xargs file | awk '{print $2 $3 $4}' | tail -1)"
echo "3 - $(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 3 | awk '{print $2}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 3 | awk '{print $1}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 3 | awk '{print $2}' | xargs file | awk '{print $2 $3 $4}' | tail -1)"
echo "4 - $(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 4 | awk '{print $2}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 4 | awk '{print $1}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 4 | awk '{print $2}' | xargs file | awk '{print $2 $3 $4}' | tail -1)"
echo "5 - $(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 5 | awk '{print $2}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 5 | awk '{print $1}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 5 | awk '{print $2}' | xargs file | awk '{print $2 $3 $4}' | tail -1)"
echo "6 - $(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 6 | awk '{print $2}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 6 | awk '{print $1}'| tail -1)" "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 6 | awk '{print $2}' | xargs file | awk '{print $2 $3 $4}' | tail -1)"
echo "7 - $(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 7 | awk '{print $2}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 7 | awk '{print $1}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 7 | awk '{print $2}' | xargs file | awk '{print $2 $3 $4}' | tail -1)"
echo "8 - $(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 8 | awk '{print $2}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 8 | awk '{print $1}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 8 | awk '{print $2}' | xargs file | awk '{print $2 $3 $4}' | tail -1)"
echo "9 - $(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 9 | awk '{print $2}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 9 | awk '{print $1}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 9 | awk '{print $2}' | xargs file | awk '{print $2 $3 $4}' | tail -1)"
echo "10 - $(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 10 | awk '{print $2}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 10 | awk '{print $1}'| tail -1)," "$(sudo find $1 -type f -exec du -h {} + | sort -gr | head -n 10 | awk '{print $2}' | xargs file | awk '{print $2 $3 $4}' | tail -1)"
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file): "
echo "$(sudo find $1 -type f -executable -exec du -b {} + | sort -n -r | head -10 | awk '{print $2}' | xargs -I {} sh -c 'du -h "{}"; md5sum')"

time=$(date +%s%N)
nsec=$(($(date +%s%N)-$time))
msec=$((nsec/1000000))
echo "Script execution time (in seconds) = $msec"
