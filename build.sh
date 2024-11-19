#!/bin/sh


#windows
#cargo build --release --target x86_64-pc-windows-msvc

#linux
#cargo build --release --target x86_64-unknown-linux-gnu

sudo docker run --rm -it -v $(pwd):/io -w /io messense/cargo-zigbuild   cargo zigbuild --release --target aarch64-apple-darwin
sudo docker run --rm -it -v $(pwd):/io -w /io messense/cargo-zigbuild   cargo zigbuild --release --target x86_64-apple-darwin

pwd=`pwd`
cd ./target/x86_64-apple-darwin/release
sudo tar -cjf dezoomify-rs_v2.13.0_macOS.tar.bz2 dezoomify-rs
cd $pwd

cd ./target/aarch64-apple-darwin/release
sudo tar -cjf dezoomify-rs_v2.13.0_macOS_M2.tar.bz2 dezoomify-rs

cd $pwd
