FROM caddy:2.6.2-builder-alpine as builder

RUN go env -w GOPROXY=https://goproxy.io,direct
RUN go env -w GOSUMDB=off

RUN xcaddy build \
    --with github.com/caddy-dns/alidns

FROM caddy:2.6.2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy