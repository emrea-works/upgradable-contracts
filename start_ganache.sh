#!/bin/bash
source ./.env
#ganache --database.dbPath $chaindata
ganache --database.dbPath $CHAINDATA_PATH \
  --wallet.mnemonic "$MNEMONIC" --chain.networkId $GANACHE_NETWORK_ID \
  --miner.blockGasLimit $GANACHE_BLOCK_GAS_LIMIT --server.port $GANACHE_PORT \
  --wallet.totalAccounts 10 --wallet.defaultBalance 10
