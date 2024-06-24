#!/bin/bash
while getopts e:d: flag
do
    case "${flag}" in
        e) EMAIL=${OPTARG};;
        d) DOMAIN=${OPTARG};;
    esac
done
FOLDER="./letsencryt"
echo "launching certbot..saving certificates in $FOLDER"
echo "Email: $EMAIL";
echo "domain: $DOMAIN";

#mkdir -p ./letsencrypt && mkdir -p ./letsencrypt/work-dir && mkdir -p ./letsencrypt/logs-dir && certbot certonly --standalone --http-01-port 8080 -d 'effortlessactuality.co.uk' -m 'binarygeometry@gmail.com' --config-dir ./letsencrypt --agree-tos --no-eff-email --work-dir ./letsencrypt/work-dir --logs-dir ./letsencrypt/logs-dir
