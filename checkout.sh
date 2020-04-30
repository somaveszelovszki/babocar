#!/bin/bash

declare -A branches

branches['.']='robonaut'
branches['3d-models']='master'
branches['circuit/altium-libs']='master'
branches['circuit/control-panel']='master'
branches['circuit/line-detector']='master'
branches['circuit/motor-controller']='master'
branches['circuit/rs422-adapter']='master'
branches['circuit/vl53l0x-adapter']='master'
branches['circuit/voltage-converter']='master'
branches['firmware/control-panel']='master'
branches['firmware/line-detector']='master'
branches['firmware/motor-controller']='master'
branches['firmware/vl53l0x-adapter']='master'
branches['micro-utils']='master'
branches['monitor']='master'

for dir in "${!branches[@]}"
do
  echo "Entering $dir..."
  cd $dir
  git checkout ${branches[$dir]}
  git pull
  cd -
done

echo 'Checkout finished successfully'