#!/bin/bash
source ~/.bashrc
here="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
cd $here
. ~/miniconda3/etc/profile.d/conda.sh
conda activate anker
python app.py
