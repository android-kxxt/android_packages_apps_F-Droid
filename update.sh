#!/bin/bash

fail() {
	echo "Error: $1" && exit 1
}

wget -O F-Droid.apk https://f-droid.org/F-Droid.apk || fail "download failure"

gpg --verify F-Droid.apk.asc F-Droid.apk || (rm F-Droid.apk && fail "failed to verify integrity of F-Droid.apk")
