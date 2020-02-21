#!/bin/bash
mkdir -p TREE

for i in *.yang
do
echo
echo
echo > TREE/$i-tree.txt
echo "KPI for model: $i" >> TREE/$i-tree.txt
pyang -f tree $i >> TREE/$i-tree.txt
echo "Xpaths for model: $i" >> TREE/$i-tree.txt
pyang -f xpath $i >> TREE/$i-tree.txt
done
