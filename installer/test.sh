#!/bin/bash

if [ -z "$(docker-compose --version)" ]; then
  echo "Hello"
else 
  echo "nope"
fi
