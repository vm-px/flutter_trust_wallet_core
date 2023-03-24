#!/bin/zsh

cd proto

protoc --dart_out=../../lib/protobuf ./**.proto

cd ..