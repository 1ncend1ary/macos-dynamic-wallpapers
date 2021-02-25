#!/bin/bash
curl -s https://api.sunrise-sunset.org/json\?lat\=59.9311\&lng\=30.3609 | python -c "import sys, json; print(json.load(sys.stdin)['results']['sunset'])" > sunset.txt
curl -s https://api.sunrise-sunset.org/json\?lat\=59.9311\&lng\=30.3609 | python -c "import sys, json; print(json.load(sys.stdin)['results']['civil_twilight_begin'])" > sunrise.txt
