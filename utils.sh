#!/bin/bash

function echo_fail {
  printf "\e[31m✘ ${1}\033[0m\n"
}
function echo_success {
  printf "\e[32m✔ ${1}\033[0m\n"
}
function echo_info {
  printf "\e[94m➜ ${1}\033[0m\n"
}
