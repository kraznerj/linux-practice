#!/bin/bash

# Create directories
mkdir -p ~/linux-practice/{test1,test2,test3}

# Create test files
touch ~/linux-practice/test1/file1.txt
touch ~/linux-practice/test2/file2.txt
touch ~/linux-practice/test3/file3.txt

echo -e "This is file 1." >> ~/linux-practice/test1/file1.txt
echo -e "Jori Was Here" >> ~/linux-practice/test2/file2.txt
echo -e "This is file 3." >> ~/linux-practice/test3/file3.txt

# Set permissions
chmod 644 ~/linux-practice/test1/file1.txt
chmod 007 ~/linux-practice/test2/file2.txt
chmod 755 ~/linux-practice/test3/file3.txt

# Create script file
echo -e '#\!/bin/bash\n\necho "Hello, World!"' > ~/linux-practice/hello.sh


