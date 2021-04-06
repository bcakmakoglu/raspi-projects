#!/bin/sh
set -ea

cd db

mongod --repair

mongod

mongoPID=$!
wait "$mongoPID"
