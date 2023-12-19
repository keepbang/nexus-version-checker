#!/bin/bash

set -eo pipefail

# config
repository=${REPOSITORY:-}
format=${FORMAT:-}
group=${GROUP:-}
name=${NAME:-}
version=${VERSION:-}
nexus_host=${NEXUS_HOST:-}
auth_base64=${AUTH_BASE64:-}

setOutput() {
    echo "${1}=${2}" >> "${GITHUB_OUTPUT}"
}

searchUrl="service/rest/v1/search?sort=version&direction=desc&repository=${repository}&format=${format}&group=${group}&name=${name}&version=${version}"

# cURL
response=$(curl --location "${nexus_host}/${searchUrl}" \
--header "Authorization: Basic ${auth_base64}")

# JSON parsing
version=$(echo "$response" | jq '.items[0].version')

echo "$version"

if [ "${version}" == "$version" ]
then
  setOutput "is_component" "true"
fi

setOutput "is_component" "false"
