# syntax=docker/dockerfile:1

ARG version=2.6.1

FROM caddy:$version-builder AS builder
# RUN xcaddy build --with github.com/caddy-dns/cloudflare@91cf700356a1cd0127bcc4e784dd50ed85794af5 --with github.com/mholt/caddy-embed@6bbec9d65515ffdb40060d84255826f4fef6126c
RUN xcaddy build --with github.com/caddy-dns/cloudflare@91cf700356a1cd0127bcc4e784dd50ed85794af5

FROM caddy:$version
COPY --from=builder /usr/bin/caddy /usr/bin/caddy