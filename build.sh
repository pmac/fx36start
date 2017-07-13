#!/bin/bash

set -exo pipefail

if [ ! -d "locale" ]; then
    git clone https://github.com/mozilla-l10n/fx36start-l10n locale
fi
pushd locale
git pull
popd

./generate.py --output-dir html -f --nowarn
