#!/bin/bash

set -x

. env.sh

curl -X POST "https://api.home.nest.com/oauth2/access_token?client_id=$PRODUCT_ID&code=$PIN_CODE&client_secret=$PRODUCT_SECRET&grant_type=authorization_code"
