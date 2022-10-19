# ACME Extractor

The best extract certificates tool from acme.json (traefik).

## Features

- Dump all domains without target it.
- Support pem/crt format.
- Watch file change to dump files.
- Docker ready.

## Usage

```
Usage: acme-extractor [options]
    -f, --file FILE                  The path of amce.json
    -o, --output PATH                The path of write cert files (default path: .)
        --format FORMAT              Certificate storage format, avaiables in (default value: pem)
                                     (pem/crt)
        --watch                      Enable file change to extract cert files
        --log-level LEVEL            Set log level, avaiables in (default value: info)
                                     (debug/info/warn/error)
    -v, --version                    Show version
```

## Docker

```
docker run --rm \
  -v /etc/traefik/certs/acme.json:/acme.json \
  -v /etc/caddy/certs:/certs \
  ghcr.io/icyleaf/acme-extractor \
  -f /acme.json -o /certs --watch
```
