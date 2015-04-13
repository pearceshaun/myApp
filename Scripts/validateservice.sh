#!/bin/bash

RESULT=$(curl --silent localhost | grep V)

if [ -z "$RESULT" ]; then
	echo "Application not responding as expected. Could not find version identifier in output: '$RESULT' Failing."
	exit 1
fi
echo "Application successfully responding as expected. Passing."
exit 0
