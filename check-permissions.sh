#!/bin/bash
set -euo pipefail

BASE=~/linux-practice
PASS=0
FAIL=0

pass()  { echo "  PASS: $1"; PASS=$((PASS + 1)); }
fail()  { echo "  FAIL: $1"; FAIL=$((FAIL + 1)); }

check_perm() {
  local file="$1"
  local expected="$2"
  local label="$3"
  local actual
  if [[ "$(uname)" == "Darwin" ]]; then
    actual=$(stat -f "%p" "$file")
    actual="${actual: -3}"
  else
    actual=$(stat -c "%a" "$file")
  fi
  if [[ "$actual" == "$expected" ]]; then
    pass "$label ($expected)"
  else
    fail "$label (expected $expected, got $actual)"
  fi
}

echo "=== Checking Permission Exercises ==="

check_perm "$BASE/test1/file1.txt" "644" "test1/file1.txt permissions"
check_perm "$BASE/test2/file2.txt" "007" "test2/file2.txt permissions"
check_perm "$BASE/test3/file3.txt" "755" "test3/file3.txt permissions"

echo ""
echo "Results: $PASS passed, $FAIL failed"
[[ $FAIL -eq 0 ]]
