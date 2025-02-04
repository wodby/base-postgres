#!/bin/bash

set -e

versions=('10' '11' '12' '13' '14')
for ver in "${versions[@]}"; do
  cp ${ver}/alpine/Dockerfile ${ver}/alpine/Dockerfile.wodby

  # Change basic image.
  sed -i '/FROM alpine/i\ARG BASE_IMAGE_TAG\n' ${ver}/alpine/Dockerfile.wodby
  sed -i 's/FROM alpine.*/FROM wodby\/alpine:${BASE_IMAGE_TAG}/' ${ver}/alpine/Dockerfile.wodby

  fullVersion=$(grep -oP '(?<=^ENV PG_VERSION )([0-9\.]+)' ${ver}/alpine/Dockerfile.wodby)
  minorVersion=$(echo "${fullVersion}" | sed -E 's/.[0-9]+$$//')

  # Update gh workflow
  sed -i -E "s/(POSTGRES${minorVersion//\./}): '${minorVersion//\./\\.}\.[0-9]+'/\1: '${fullVersion}'/" .github/workflows/workflow.yml
  # Update README.
  sed -i -E "s/\`${minorVersion//\./\\.}\.[0-9]+\`/\`${fullVersion}\`/g" README.md
done