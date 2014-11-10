#!/bin/sh
VALID_PASS="secret"

echo "Enter Password"
read PASS

if [ "$VALID_PASS" = "$PASS" ]; then
	echo "You have access"
else
	echo "Access Denied"
fi
