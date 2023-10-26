# syntax=docker/dockerfile:1

ARG version=2.7.5

FROM caddy:$version-builder AS builder
RUN xcaddy build --with github.com/caddy-dns/cloudflare@737bf003fe8af81814013a01e981dc8faea44c07

FROM caddy:$version
COPY --from=builder /usr/bin/caddy /usr/bin/caddy