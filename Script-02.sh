#!/bin/bash

cut -d " " -f1 lista-de-downloads.txt | sort -u
cut -d " " -f3 lista-de-downloads.txt | sort | uniq -c 


