# syntax=docker/dockerfile:1
FROM caddy:2.5.2-builder AS builder
RUN xcaddy build v2.5.2 --with github.com/caddy-dns/cloudflare@91cf700356a1cd0127bcc4e784dd50ed85794af5
FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy