#!/bin/sh

set -Eeuo pipefail

podman build -t sample-php-fpm .
podman run --rm --name sample-php-fpm sample-php-fpm 

