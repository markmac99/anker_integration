#!/bin/bash

# copyright Mark McIntyre, 2023-

# install WU service to read from my bresser

here="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
cd $here

mkdir -p ~/.config/systemd/user/
cp ankermq.service ~/.config/systemd/user/
systemctl --user daemon-reload
systemctl --user enable ankermq
systemctl --user start ankermq
