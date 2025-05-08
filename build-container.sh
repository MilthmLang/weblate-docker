#!/bin/bash

SHA=$(curl -s https://api.github.com/repos/MilthmLang/weblate/branches/main | jq -r '.commit.sha')
DATE=$(date -I)

bash .github/bin/bleeding "$SHA" "$DATE"
