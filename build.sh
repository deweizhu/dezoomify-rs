#!/bin/sh

sudo docker run --rm -it -v $(pwd):/io -w /io messense/cargo-zigbuild   cargo zigbuild --release --target aarch64-apple-darwin
sudo docker run --rm -it -v $(pwd):/io -w /io messense/cargo-zigbuild   cargo zigbuild --release --target x86_64-apple-darwin
