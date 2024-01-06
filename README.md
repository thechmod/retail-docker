# retail-docker

Dockerized version of [retail](https://github.com/madivad/retail) by [@madivad](https://github.com/madivad) slightly modified by me to sort all files ascending alphabetically.

This script is much like `tail -F *` except it takes a directory and scans the containing files at runtime, watching for new files and continuously tailing the current set of files inside the given directory.

## Getting started

### Prerequisites

In order to run this container you'll need docker installed.

- [Windows](https://docs.docker.com/windows/started)
- [OS X](https://docs.docker.com/mac/started/)
- [Linux](https://docs.docker.com/linux/started/)

### Usage

#### CLI

All you need is to mount your logs folder into `/logs` and run container:

```bash
docker run --rm -it -v "/path/to/logs:/logs" thechmod/retail:latest
```

#### docker-compose

If you prefer to use docker-compose to run your stack, here's a sample service definition:

```yml
version: "3.7"

services:
  retail:
    image: thechmod/retail:latest
    tty: true
    volumes:
      - /path/to/logs:/logs
```

## Build

If you want to make local modifications and build your own image, follow these steps:

```bash
git clone https://github.com/thechmod/retail-docker
cd retail-docker
docker buildx build -t thechmod/retail:latest .
```

## Authors

* [**madivad**](https://github.com/madivad) - *Initial work* 
* [**chmod**](https://github.com/thechmod) - *Docker image* 
