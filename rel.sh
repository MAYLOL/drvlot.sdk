#!/usr/bin/env bash
S="src"
s="sha/eth dsa/eth ies/eth"
P="rel"
F="ean"
t=(
  ios
  android
)
e=(
  framework
  aar
)
cd "$S"
n=${#t[@]}
for (( i = 0; i < n; i++ )); do
  `mkdir -p "../$P/${t[i]}"` && `gmb -target "${t[i]}" -o "../$P/${t[i]}/$F.${e[i]}" -a -v $s`
done
`find .. -name *.jar -exec rm {} \;`