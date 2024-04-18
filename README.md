# Network connection debugger

This project provides a Docker container with tools to debug network connections.
You can use it to debug the IP/TCP/UDP connection to any endpoint.
E.g. this might be useful to check if there is a firewall blocking network
traffic between a Kubernetes cluster and a database.

## Usage

The docker image is available in Docker Hub as `tomschamberger/network-connection-debugger`.

Arguments:

1. Hostname or IP address
2. Port for TCP/UDP check

```shell
docker run tomschamberger/network-connection-debugger [host] [port]
```
