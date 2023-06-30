#!/bin/sh

updates=$(apt list --upgradable | wc -l)

if [ "$updates" -gt 0 ]; then
	echo "# $updates"
else
	echo "none"
fi

