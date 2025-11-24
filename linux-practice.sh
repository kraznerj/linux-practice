#!/bin/bash

# Create directories
mkdir -p ~/linux_practice/{test1,test2,test3}

# Create test files
touch ~/linux_practice/test1/file1.txt
touch ~/linux_practice/test2/file2.txt
touch ~/linux_practice/test3/file3.txt

echo -e "This is file 1." > ~/linux_practice/test1/file1.txt
echo -e "Jori Was Here" > ~/linux_practice/test2/file2.txt
echo -e "This is file 3." > ~/linux_practice/test3/file3.txt

# Set permissions
chmod 644 ~/linux_practice/test1/file1.txt
chmod 007 ~/linux_practice/test2/file2.txt
chmod 755 ~/linux_practice/test3/file3.txt

# Create script file
echo -e '#\!/bin/bash\n\necho "Hello, World!"' > ~/linux_practice/hello.sh


