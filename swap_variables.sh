#!/bin/bash

A=123
B=456

echo "original meaning A = $A"
echo "original meaning B = $B"

TEMP=$A
A=$B
B=$TEMP

echo "after swaping.."

echo "original meaning A = $A"
echo "original meaning B = $B"
echo "reseting.."

B=$A
A=$TEMP

echo "original meaning A = $A"
echo "original meaning B = $B"

echo "swaping withoutb third variable.."
A=$((A + B))
B=$(( A - B ))
A=$(( A - B ))

echo "original meaning A = $A"
echo "original meaning B = $B"

