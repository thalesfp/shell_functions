#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PATH=$CURRENT_DIR:$CURRENT_DIR/modules:$CURRENT_DIR/tests:$PATH

MODULES=$(ls $CURRENT_DIR/modules)

source commands.sh

if [ "$1" != "" ] ; 
then
	source $CURRENT_DIR/modules/$1
else
	for i in $MODULES ;
	do
		source $CURRENT_DIR/modules/$i
	done
fi