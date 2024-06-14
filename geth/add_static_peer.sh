#!/bin/bash

static_nodes_file="./static-nodes.json"

if [ ! -f "$static_nodes_file" ]; then
  echo "static-nodes.json not found"
  exit 1
fi

enodes=$(jq -r '.[]' "$static_nodes_file")

for enode in $enodes; do
  result=$(docker exec -i berachain-execution-geth-1 geth attach --exec "admin.addPeer('$enode')")
  if [ "$result" = "true" ]; then
    echo "Successfully added peer: $enode"
  else
    echo "Failed to add peer: $enode"
  fi
done