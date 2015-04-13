#!/bin/bash

RESULT=$(curl --silent localhost)
VERSION=$(echo $RESULT | grep V)

if [ -z "$VERSION" ]; then
	echo "Application not responding as expected. Could not find version identifier in output: '$RESULT' Failing."
	exit 1
fi
echo "Application successfully responding as expected. Passing."
exit 0
