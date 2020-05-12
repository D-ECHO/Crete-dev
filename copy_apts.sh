#!/bin/sh
rm -r output/NavData/apt
mkdir output/NavData/apt
for i in data/airports/*.dat; do
	cp $i output/NavData/apt/
done
