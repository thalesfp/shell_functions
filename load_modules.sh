#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PATH=$CURRENT_DIR:$CURRENT_DIR/modules:$CURRENT_DIR/tests:$PATH

MODULES=$(ls $CURRENT_DIR/modules)

source commands.sh

for i in $MODULES;
do
	source $CURRENT_DIR/modules/$i
done