#!/usr/bin/env bash

set -xeuo pipefail

source /usr/local/greengage-db-devel/greengage_path.sh
source /home/gpadmin/gpdb_src/gpAux/gpdemo/gpdemo-env.sh

errors=0

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.."

make installcheck REGRESS_OPTS="--init-file=/home/gpadmin/gpdb_src/src/test/regress/init_file" || errors=$(( errors + $? ))

cp results regression.diffs /logs/ || true

if (( errors > 0 )); then
  cat regression.diffs || true
  exit 1
fi
exit 0
