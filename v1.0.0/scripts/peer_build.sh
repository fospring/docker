#!/bin/bash 

echo "Building fabric peer"
CGO_CFLAGS=" " \
go install -tags "" \
-ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=1.0.0-preview \
            -X github.com/hyperledger/fabric/common/metadata.BaseVersion=0.3.1 \
            -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric \
            -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger \
            -X github.com/hyperledger/fabric/common/metadata.BaseDockerNamespace=hyperledger" \
github.com/hyperledger/fabric/peer
