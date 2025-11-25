#!/bin/bash
set -e

# Test simple: renvoie 200 si l'app répond
response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:5000 || echo "000")
if [ "$response" -eq 200 ]; then
  echo "Application disponible (HTTP 200)"
  exit 0
else
  echo "Application indisponible — code HTTP: $response"
  exit 1
fi
