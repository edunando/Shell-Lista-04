#!/bin/bash

awk '{v[$1]+=$3} END {for (r in v) print r, v[r]}' < lista-de-downloads.txt | sort -u

