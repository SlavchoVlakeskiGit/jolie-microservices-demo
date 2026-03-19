# Jolie Microservices Demo

A small distributed systems demo built with the Jolie programming language to show service communication, peer registration, and gateway-based request flow.

This project was created to explore service-oriented design in a lightweight academic but still practical format.

## Features

- Gateway service for routing requests
- Peer registration flow
- Peer-to-peer style communication through Jolie services
- Configurable ports through shared configuration
- Simple runnable demo for distributed system concepts

## Technologies

- **Language:** Jolie
- **Architecture:** Service-Oriented Architecture (SOA)
- **Concepts:** Microservices, service communication, peer registration, SODEP protocol

## Project Structure

```text
jolie-microservices-demo/
│
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

## Architecture

```text
Client → Gateway Service → Peer Service
```

### Components

- **Gateway Service** — handles peer registration and request flow
- **Peer Service** — registers itself and exposes operations
- **Client** — sends a request through the gateway

## How to Run

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

## What This Project Demonstrates

- Basic microservice communication in Jolie
- Service interface separation
- Gateway pattern fundamentals
- Configurable distributed service setup

## Limitations

- Small demo scope
- Intended for learning and experimentation rather than production use
- No persistence or advanced fault tolerance

## Why I Built This

I built this project to explore distributed systems concepts and get hands-on experience with Jolie and service-oriented communication patterns.

## Author

**Slavcho Vlakeski**
