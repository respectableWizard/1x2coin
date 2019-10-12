#!/bin/bash
set -x

USER=1x2coin
chown -R ${USER} /usr/local/bin/1x2*
chown -R ${USER} ${HOME}
exec gosu ${USER} "$@"