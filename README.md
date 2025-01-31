# berachain-execution
Berachain Execution Client deployment

## Geth

### Init

1. Download [eth-genesis.json](https://github.com/berachain/beacon-kit/blob/main/testing/networks/80084/eth-genesis.json)

2. Run init

```bash
docker run --rm -v $PWD/eth-genesis.json:/app/eth-genesis.json -v $PWD/data:/data ethereum/client-go:v1.14.13 init --datadir /data/geth /app/eth-genesis.json
```

### Deploy

```bash
cp .env.sample .env
docker compose up -d
```

### Add Static Nodes
If you fail to connect to a peer via bootnode, try adding a static peer dynamically.

```bash
cd ./geth
vi static-nodes.json # Add static peers
./add_static_peers.sh
```