#!/bin/bash

export TARGET_PROJECTS=(
replugin-host-gradle
replugin-host-library
replugin-plugin-gradle
replugin-plugin-library
)

for p in ${TARGET_PROJECTS[@]}; do echo ${p}; done
