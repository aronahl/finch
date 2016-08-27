# finch
Docker build of [Finch](https://developer.pidgin.im/wiki/Using%20Finch]) on [Ubuntu 14.04](http://releases.ubuntu.com/14.04/) using [dumb-init](https://github.com/Yelp/dumb-init).

## Usage

Start similar to:

```bash
$ docker run -e TERM -e TZ=America/Indianapolis -v fincy:/root/.purple --rm -it aronahl/finch
```
