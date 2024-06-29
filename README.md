# Deploy to Production

An SSL landing page served by nginx from a [rootless](https://docs.docker.com/engine/security/rootless/) docker container inside a linux vm.

## Redirecting ports

This assumes port 80 and port 443 are owned by root on the virtual instance you are working with. We need to give our rootless container some ports to work with. This should be the only place we use sudo.

```bash
~$ sudo apt install redir
~$ sudo redir :80 127.0.0.1:8080 
~$ sudo redir :443 127.0.0.1:8443
~$ sudo lsof -i -P -n | grep LISTEN
# `killall redir` to clear redirects and start again
```

## SSL certification 

We need to execute this command to authenticate this domain for SSL. The [certbot](https://certbot.eff.org/) requires both the domain name served by the container and and an administrator password. The domain will also be supplied to the nginx.conf !!TODO!!

```bash
~/deploy-to-production$ bash ./certonly.sh -e admin@example.org -d effortlessactuality.co.uk
```

## Running the container 

With our ports properly mapped to those exposed by the container

```bash
~/deploy-to-production$ docker compose up
~/deploy-to-production$ docker run 
```

```bash
~/deploy-to-production$ docker-compose --env-file /docker-env up -d
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.


## License

[MIT](https://choosealicense.com/licenses/mit/)

## With gratitude to these strong shouldered giants
[https://github.com/Einsteinish/docker-nginx-hello-world](https://github.com/Einsteinish/docker-nginx-hello-world)

[https://linuxconfig.org/how-to-bind-a-rootless-container-to-a-privileged-port-on-linux](https://linuxconfig.org/how-to-bind-a-rootless-container-to-a-privileged-port-on-linux)



<!-- #
 #   Create a variable environment on Linux shell:

    export TAG=0.1.2

 #   Set variable inside docker-compose.yml

    db:
      image: "redis:${TAG}"

#    Verify if value was replaced

    docker-compose config


    https://stackoverflow.com/questions/29377853/how-can-i-use-environment-variables-in-docker-compose
 -->

