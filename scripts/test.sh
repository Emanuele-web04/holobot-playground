#!/bin/sh
set -eu

cd "$(dirname "$0")/.."
test -s README.md
test "$(head -n 1 README.md)" = '# HoloBot Playground'
grep -Fxq 'This repository contains only synthetic test data.' README.md
grep -Fxq 'Checked by CI.' README.md
printf '%s\n' 'Synthetic playground check passed.'
