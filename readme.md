# docker-caddy

## Installation

Prepare.

```bash
mkdir --parents ~/docker
npx degit Jaid/docker-caddy ~/docker/caddy
cd ~/docker/caddy/app
```

Enter your Cloudflare API token with permissions “Zone.Zone” and “Zone.DNS”.

![](https://i.imgur.com/UZ31CNZ.png)

```bash
mv .env.template .env
nano .env
```

Enable the service.

```bash
sudo ln --symbolic ~/docker/caddy/app/caddy.service /etc/systemd/system/caddy.service
sudo systemctl enable caddy
```