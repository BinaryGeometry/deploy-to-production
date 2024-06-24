#!/bin/bash
mkdir -p ./letsencrypt && mkdir -p ./letsencrypt/work-dir && mkdir -p ./letsencrypt/logs-dir && certbot certonly --standalone --http-01-port 8080 -d 'effortlessactuality.co.uk' -m 'binarygeometry@gmail.com' --config-dir ./letsencrypt --agree-tos --no-eff-email --work-dir ./letsencrypt/work-dir --logs-dir ./letsencrypt/logs-dir
