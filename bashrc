#! /bin/bash

pushd $(dirname ${BASH_SOURCE[0]}) > /dev/null

# load other scripts
SCRIPTS_FOLDER=bashrc.d
if [ -d ${SCRIPTS_FOLDER} ]; then
	for script in $SCRIPTS_FOLDER/*; do
		. $script
	done
fi

popd > /dev/null
