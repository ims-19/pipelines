#!/bin/sh
curl -s --fail --show-error localhost:4040
sleep 5
curl -s --fail --show-error localhost:4040/owners/find
sleep 5
curl -s --fail --show-error localhost:4040/owners?lastName=test
sleep 5
curl -s --fail --show-error localhost:4040/vets.html
sleep 5
curl -s --fail --show-error localhost:4040/owners/new
sleep 5
curl -s --fail --show-error -X POST -F "firstName=first" -F "lastName=last" -F "address=address" -F "city=city" -F "telephone=1" localhost:4040/owners/new
