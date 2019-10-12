1x2coin masternode for docker
=============================

Docker image that runs the 1x2coin daemon which can be turned into a masternode with the correct configuration.

Quick Start
-------------

```shell
docker run \
  -d \
  -e PORT=${PORT}\
  -e EXTERNALIP=xx.xx.xx.xx \
  -e MASTERNODEGENKEY=${MASTERNODEGENKEY} \
  -v </some/directory>:/home/1x2coin \
  --name=1x2coin \
  respectablewizard/1x2coin
```

## Advanced configuration ##

``` shell
export PORT=9214
docker run \
  -d \
  -e PORT=${PORT}\
  -e EXTERNALIP=xx.xx.xx.xx \
  -e MASTERNODEGENKEY=${MASTERNODEGENKEY} \
  -v </some/directory>:/home/1x2coin \
  --name=1x2coin \
  respectablewizard/1x2coin
```

You can also change the default RPC port with -e RPCPORT
This will create the folder `.1x2coin` in `/some/directory` with a bare `1x2coin.conf`. You might want to edit the `1x2coin.conf` before running the container because with the bare config file it doesn't do much, it's basically just an empty wallet.

TODO: Enable RPC monitoring on port 9215
