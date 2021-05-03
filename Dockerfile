# syntax=docker/dockerfile:1
FROM caddy:2.3.0-builder-alpine AS builder
RUN xcaddy build v2.3.0 --with github.com/caddy-dns/cloudflare@9d3a8971aaa85bbd126c1e0331e02db6680da266
FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy