#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
source ${DIR}/../../scripts/utils.sh

cp $PWD/create-role-bindings-for-group.sh ../../environment/rbac-sasl-plain/scripts/helper/

${DIR}/../../environment/rbac-sasl-plain/start.sh


log "Creating role bindings for group"
docker exec -i tools bash -c "/tmp/helper/create-role-bindings-for-group.sh"
