#!/bin/bash

RELEASE_DATE=$(date '+%F-%H-%M')

zip_path="api-${RELEASE_DATE}.zip"

# -j ... directory ignore
zip -rj ${zip_path} ./src/main.py
cd ./src
zip -r ../${zip_path} ./routers -x "*__pycache__*"
mv ../${zip_path} ~/desktop
echo "zip OK"