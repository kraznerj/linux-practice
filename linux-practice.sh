#!/bin/bash
set -euo pipefail

# Create directories
mkdir -p ~/linux-practice/{test1,test2,test3}

# Create test files (remove first so re-runs work despite restrictive permissions)
rm -f ~/linux-practice/test1/file1.txt \
      ~/linux-practice/test2/file2.txt \
      ~/linux-practice/test3/file3.txt

echo "This is file 1." > ~/linux-practice/test1/file1.txt
echo "Jori Was Here" > ~/linux-practice/test2/file2.txt
echo "This is file 3." > ~/linux-practice/test3/file3.txt

# Set permissions
chmod 644 ~/linux-practice/test1/file1.txt
chmod 007 ~/linux-practice/test2/file2.txt
chmod 755 ~/linux-practice/test3/file3.txt

# Create script file
cat << 'EOF' > ~/linux-practice/hello.sh
#!/bin/bash

echo "Hello, World!"
EOF


