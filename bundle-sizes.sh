#!/usr/bin/env bash

for name in torrent firebase ipfs
do
  echo $name $(echo "import {joinRoom} from './src/$name'; joinRoom()" \
    | rollup --silent -p node-resolve -p commonjs | terser -cm | wc -c)
done