#!/bin/bash

set -xue

PACK_PATH=$(cd $(dirname $0)/..; pwd)/pack/favorite

for i in $(find $PACK_PATH -type d | grep /\\.git$); do
	git -C $(cd $i/..; pwd) pull --prune
done

