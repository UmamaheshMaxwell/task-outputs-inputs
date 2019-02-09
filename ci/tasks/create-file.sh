#!/bin/bash

mkdir some-files
cd some-files
touch file1.js file2.js file3.js file4.js
echo "console.log(`file1`)" > some-files/file1.js
echo "console.log(`file2`)" > some-files/file2.js
echo "console.log(`file3`)" > some-files/file3.js
echo "console.log(`file4`)" > some-files/file4.js

echo "All files have been created successfully"