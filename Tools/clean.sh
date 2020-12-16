#!/usr/bin/env bash
nrfjprog --eraseall --snr $1
nrfjprog --eraseall --snr $2
export CONTROLLER_SN=$1
export OUTLET_SN=$2
platformio run -t upload -e nrf52840_dk -d ../MeshController
platformio run -t upload -e nrf52_dk -d ../OutletFirmware

# export CONTROLLER_SN='683897087'
# export OUTLET_SN='682507407'