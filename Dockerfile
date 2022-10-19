FROM --platform=$BUILDPLATFORM ruby:3-alpine

WORKDIR /app

COPY acme-extractor /usr/bin/acme-extractor

ENTRYPOINT ["/usr/bin/acme-extractor"]
