#!/usr/bin/env bash

rm -rf ./gen-*
rm -rf ./src/main/*

thrift -r --gen php:server demo.thrift

thrift -r --gen java -o src/main demo.thrift && \
mv src/main/gen-java src/main/java