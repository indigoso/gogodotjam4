#!/bin/bash

python3 update-ver.py

echo Enter the commit message:
read commitmessage

git commit * -m "$commitmessage"
git push