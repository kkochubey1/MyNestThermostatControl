#!/bin/bash

. env.sh

set -x

curl -L "https://developer-api.nest.com/devices/thermostats?auth=$ACCESS_TOKEN"
