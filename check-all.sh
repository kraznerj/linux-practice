#!/bin/bash
set -euo pipefail

DIR=$(dirname "$0")
OVERALL_PASS=0
OVERALL_FAIL=0

for script in "$DIR"/check-*.sh; do
  name=$(basename "$script")
  [[ "$name" == "check-all.sh" ]] && continue
  echo "Running $name..."
  if bash "$script"; then
    echo "  -> $name passed"
    OVERALL_PASS=$((OVERALL_PASS + 1))
  else
    echo "  -> $name failed"
    OVERALL_FAIL=$((OVERALL_FAIL + 1))
  fi
  echo ""
done

echo "=== Overall: $OVERALL_PASS suites passed, $OVERALL_FAIL suites failed ==="
[[ $OVERALL_FAIL -eq 0 ]]
