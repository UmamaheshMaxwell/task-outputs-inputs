#!/bin/bash

mkdir some-files
echo "console.log('Hello from file1')" > some-files/file1.js
echo "console.log('Hello from file2')" > some-files/file2.js
echo "console.log('Hello from file3')" > some-files/file3.js
echo "console.log('Hello from file4')" > some-files/file4.js

ls some-files/*

echo "All files have been created successfully"