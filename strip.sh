#!/bin/bash

cat JMdict.xml | grep -v -e '<gloss xml:lang="spa"' -e '<gloss xml:lang="hun">' -e '<gloss xml:lang="rus">' -e '<gloss xml:lang="dut">' -e '<gloss xml:lang="swe">' -e '<gloss xml:lang="fre">' -e '<ent_seq>' | tr -d '\n' | sed 's|<sense></sense>||g' | sed 's|.*-->||'  > JMdict_stripped.xml
gzip JMdict_stripped.xml
