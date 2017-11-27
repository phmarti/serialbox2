#!/bin/bash
##===-------------------------------------------------------------------------------*- bash -*-===##
##
##                                   S E R I A L B O X
##
## This file is distributed under terms of BSD license. 
## See LICENSE.txt for more information.
##
##===------------------------------------------------------------------------------------------===##
##
## Run Python Unittest.
##
## THIS FILE IS AUTOGENERATED, DO NOT MODIFY!!!
##
##===------------------------------------------------------------------------------------------===##

#
# Export paths
#
export PYTHONPATH="$PYTHONPATH:${SERIALBOX_PYTHON_MODULE}:${SERIALBOX_PYTHON_MODULE}/sdb"

#
# Check if nose exists
#
"${PYTHON_EXECUTABLE}" -c "import nose"
if [ "$?" == "1" ]; then
  echo ">> Python tests require module 'nose'"
  exit 1
fi

#
# Run serialbox python tests with nose
#
cd "${PYTHON_TEST_DIR}/serialbox"
"${PYTHON_EXECUTABLE}" -m "nose"

#
# Run the sdb tests with nose
#
cd "${PYTHON_TEST_DIR}/sdb/sdbcore"
"${PYTHON_EXECUTABLE}" -m "nose"
