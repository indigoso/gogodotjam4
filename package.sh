#!/bin/bash

python3 update-ver.py

git commit * -m "committed with packager"
git push