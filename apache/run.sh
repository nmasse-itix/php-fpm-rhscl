#!/bin/sh

set -Eeuo pipefail

podman build -t sample-apache .
podman run --rm --name sample-apache sample-apache 

