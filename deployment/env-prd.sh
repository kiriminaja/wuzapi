#!/bin/bash
vault kv get -format=json production/kaj-wuzapi-srvc | jq -r '.data.data | to_entries | .[] | "\(.key)=\(.value)"' >> .env