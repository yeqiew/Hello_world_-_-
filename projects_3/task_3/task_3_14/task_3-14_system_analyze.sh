#!/bin/bash

echo "=== ИСПОЛЬЗОВАНИЕ ДИСКОВ ==="
echo ""

df -h | awk '
NR > 1 {
    printf "%-20s %5s\n", $1, $5
}'
