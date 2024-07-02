#!/usr/bin/env bash

set -xeu

script_dir=$(cd $(dirname $0); pwd)

docker run --rm \
	-v "${script_dir}:/data"	\
	--user $(id -u):$(id -g)	\
	pandoc/core \
	-s index.md -o index.html \
	--template=/data/templates/uikit.html --toc -c added.css
