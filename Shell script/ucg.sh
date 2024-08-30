#!/bin/sh
echo 'You are dying. 1=live'; read p; [ "$p" = 1 ] && echo "You won" || echo "You died"