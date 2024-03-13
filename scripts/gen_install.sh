#!/usr/bin/env bash

# To get a reproducible ordering of the files
LANG=C

echo 'share: ['

for file in include/*.h src/*.[ch]; do
  f="${file//\//\\\\}"
  printf '  "%s" {"%s"}\n' "$f" "$f"
done

echo ']'
