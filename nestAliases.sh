#!/bin/bash

nestset() {
  . env.sh
  curl -L -X PUT "https://developer-api.nest.com/devices/thermostats/$DEVICE_ID/target_temperature_f?auth=$ACCESS_TOKEN" -H "Content-Type: application/json" -d "$1"
}

nestget() {
  . env.sh
  set -x
  curl -L "https://developer-api.nest.com/devices/thermostats/$DEVICE_ID/target_temperature_f?auth=$ACCESS_TOKEN"
}

nestaway() {
  . env.sh
  curl -L -X PUT "https://developer-api.nest.com/structures/$STRUCTURE_ID/away?auth=$ACCESS_TOKEN" -H "Content-Type: application/json" -d '"away"'
}

nesthome() {
  . env.sh
  curl -L -X PUT "https://developer-api.nest.com/structures/$STRUCTURE_ID/away?auth=$ACCESS_TOKEN" -H "Content-Type: application/json" -d '"home"'
}
