#! /bin/bash -x

RANDOM=$(( ( $RANDOM % 10 )  + 1 ))

echo "$RANDOM"
