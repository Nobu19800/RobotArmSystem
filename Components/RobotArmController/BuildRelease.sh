#!/bin/sh
cd `dirname $0`
cmake --build . --target ALL_IDL_TGT
cmake --build . --config Release
