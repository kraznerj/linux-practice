#!/bin/bash
set -euo pipefail

BASE=~/linux-practice
PASS=0
FAIL=0

pass()  { echo "  PASS: $1"; PASS=$((PASS + 1)); }
fail()  { echo "  FAIL: $1"; FAIL=$((FAIL + 1)); }

check_file() {
  if [[ -f "$1" ]]; then
    pass "$2"
  else
    fail "$2"
  fi
}

check_dir() {
  if [[ -d "$1" ]]; then
    pass "$2"
  else
    fail "$2"
  fi
}

echo "=== Checking Navigation Exercises ==="

check_dir "$BASE/dir1" "dir1/ exists"
check_dir "$BASE/dir1/one" "dir1/one/ exists"
check_dir "$BASE/dir1/two" "dir1/two/ exists"
check_dir "$BASE/dir1/three" "dir1/three/ exists"
check_file "$BASE/dir1/one/one.txt" "dir1/one/one.txt exists"
check_file "$BASE/dir1/two/two.txt" "dir1/two/two.txt exists"
check_file "$BASE/dir1/three/three.txt" "dir1/three/three.txt exists"

if [[ -f "$BASE/dir1/three/four.txt" ]]; then
  fail "dir1/three/four.txt should have been renamed to three.txt"
fi

echo ""
echo "Results: $PASS passed, $FAIL failed"
[[ $FAIL -eq 0 ]]
