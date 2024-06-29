FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ARG NGINXCONF
#ENV env_name $name
#ADD $NGINXCONF /etc/nginx/conf.d/
#ADD $NGINXCONF /etc/nginx/conf.d/
#ADD helloworld.conf /etc/nginx/conf.d/
ADD localhost.conf /etc/nginx/conf.d/
#COPY ../../cert/  /etc/letsencrypt/
#mkdir ./certbort && mkdir ./certbort/work-dir && mkdir ./certbort/logs-dir && certbot certonly --standalone --http-01-port 80 -d 'effortlessactuality.co.uk' -m 'binarygeometry@gmail.com' --config-dir ./certbort --agree-tos --no-eff-email --work-dir ./certbort/work-dir --logs-dir ./certbort/logs-dir
#COPY ~/cert/live/effortlessactuality.co.uk/fullchain.pem  /etc/ssl/fullchain.pem
#COPY ~/cert/live/effortlessactuality.co.uk/privkey.pem /etc/ssl/privkey.pem
ADD index.html /usr/share/nginx/html/
