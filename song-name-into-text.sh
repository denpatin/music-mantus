#!/bin/bash

for song in ./*
do
  name=$(basename "$song")
  name=${name#*. }
  name=${name%.md}
  echo -e "## $name\n" > "$song"
done
