# berachain-execution
Berachain Execution Client

## Init

1. Download [eth-genesis.json](https://github.com/berachain/beacon-kit/blob/main/testing/networks/80086/eth-genesis.json)

2. Run init
```
docker run --rm -v $PWD/eth-genesis.json:/app/eth-genesis.json -v $PWD/data:/data ethereum/client-go init --datadir /data/geth /app/eth-genesis.json
```