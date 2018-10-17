#!/usr/bin/env bash
S=".."
D="src"
s=(
  drvlot.sha
  drvlot.dsa
  drvlot.ies
)
d=(
  sha
  dsa
  ies
)
mkdir -p "$D"
n=${#s[@]}
for (( i = 0; i < n; i++ )); do
  ln -sF "$S/../${s[i]}" "$D/${d[i]}"
done