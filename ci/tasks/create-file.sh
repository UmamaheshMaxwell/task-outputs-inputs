#!/bin/bash

if [ -d some-files ]    
then 
    echo "dir present"
else
    echo "dir not present"
    mkdir some-files
    echo "console.log('file1')" > some-files/file1.js
    echo "console.log('file2')" > some-files/file2.js
    echo "console.log('file3')" > some-files/file3.js
    echo "console.log('file4')" > some-files/file4.js
fi

ls some-files/*

echo "All files have been created successfully"