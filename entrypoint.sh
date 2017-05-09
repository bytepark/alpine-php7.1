#!/bin/bash

USER_ID=${LOCAL_USER_ID:-9001}
GROUP_ID=${LOCAL_GROUP_ID:-9001}

echo "Starting with UID : $USER_ID and GID : $GROUP_ID"
usermod -u $USER_ID nobody
groupmod -g $GROUP_ID nobody

exec "$@"

