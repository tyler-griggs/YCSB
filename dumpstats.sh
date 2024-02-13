#!/bin/bash

# Navigate to the specified directory
cd ~/YCSB/stats/ || exit

# Find the alphabetically first file and store its name
firstFile=$(find . -type f -print | sort | tail -n 1)

# Check if a file was found
if [ -z "$firstFile" ]; then
    echo "No file found in the directory."
    exit 1
fi

# Grep for "searchKey" within the alphabetically first file and print the results
grep "mutex.wait.micros" "$firstFile"
grep "block.cache.miss" "$firstFile"
grep "block.cache.hit" "$firstFile"
grep "block.memtable.miss" "$firstFile"
grep "block.memtable.hit" "$firstFile"
grep "compact.read.bytes" "$firstFile"
grep "compact.write.bytes" "$firstFile"
grep "compaction.times.micros" "$firstFile"
grep "compaction.times.cpu_micros" "$firstFile"
grep "table.sync.micros" "$firstFile"
grep "compaction.outfile.sync.micros" "$firstFile"
grep "table.open.io.micros" "$firstFile"
grep "wal.file.sync.micros" "$firstFile"
grep "manifest.file.sync.micros" "$firstFile"
grep "sst.read.micros" "$firstFile"

# Many more!!


