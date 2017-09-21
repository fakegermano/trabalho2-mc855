#!/bin/bash

if ! hash pip > /dev/null 2>&1; then
  echo "\npip MUST be installed for this script to work.\n"
  return
fi

if ! hash virtualenv > /dev/null 2>&1; then
  echo "\nvirtualenv must be installed for this script to work - installing locally:\n"
  pip install virtualenv --user
  export PATH=$HOME/.local/bin:$PATH
fi

echo Creating virtualenv
virtualenv pyspark-env -p python3.5 2>/dev/null || echo "ERROR: Cannot create virtualenv  [virtualenv pyspark-env -p python3.5]"
source ./pyspark-env/bin/activate 2>/dev/null || echo "ERROR: Cannot activate virtualenv  [source pyspark-env/bin/activate]"
pip install pyspark 2>/dev/null || echo "ERROR: Cannot install pyspark  [pip install pyspark]"
./pyspark-env/lib/python3.5/site-packages/pyspark/bin/pyspark
