# Jolie Microservices Demo

A small distributed-system demo built with Jolie to explore service communication, peer registration, and basic interaction between components.

This repo is more of a focused technical demo than a product-style application. I built it mostly because I wanted to try something outside the usual Java/Python stack.

## What it shows

- gateway-based request flow
- peer registration
- service-to-service communication
- configurable ports through shared configuration
- a simple runnable demo for distributed system concepts

## Technologies

- Jolie
- Service-Oriented Architecture (SOA)
- SODEP protocol

## Architecture

```text
Client → Gateway Service → Peer Service
```

### Components

- **Gateway Service** — handles peer registration and request flow
- **Peer Service** — registers itself and exposes operations
- **Client** — sends a request through the gateway

## Project structure

```text
jolie-microservices-demo/
├── services/
│   ├── jeer.ol
│   └── serverJeerTest.ol
├── interfaces/
│   └── Interface.iol
├── client/
│   └── client.ol
├── config/
│   └── ports.iol
├── scripts/
│   └── run_demo.sh
└── README.md
```

## Run the demo

### Start the gateway service

```bash
jolie services/serverJeerTest.ol
```

### Start the peer service

```bash
jolie services/jeer.ol
```

### Run the client

```bash
jolie client/client.ol
```

### Or run the demo script

```bash
bash scripts/run_demo.sh
```

## Notes

I would treat this repo as a compact technical experiment rather than a production-style microservices project. The main value for me was understanding the communication flow and getting hands-on practice with an unfamiliar stack.

## Possible next improvements

- cleaner run script
- better message-flow documentation
- a simple diagram of service interaction
- more example requests

The setup is intentionally small, just enough to understand how the pieces communicate.
