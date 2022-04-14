#!/bin/sh

cd $( dirname "$0" )/..

port=${80}

# Stop the container, don't wait to kill it
docker stop --time 0 kubeweb > /dev/null 2>&1

# Remove the container
docker rm kubeweb > /dev/null 2>&1

echo "Running. To stop:\ndocker stop --time 0 octochat"

# Run the container
container=$( docker run --name kubeweb \
  -p $port:80 \
  --detach \
  kubeweb )

curl  http://localhost:$port/


