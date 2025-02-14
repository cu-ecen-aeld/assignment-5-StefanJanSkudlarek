#!/bin/bash
#Script to build buildroot configuration
#Author: Siddhant Jajoo

source shared.sh

EXTERNAL_REL_BUILDROOT=../base_external
git submodule init
git submodule sync
git submodule update

Backup=$(pwd)

set -e 

cd `dirname $0`
cd "buildroot"
make distclean
cd "${Backup}"

