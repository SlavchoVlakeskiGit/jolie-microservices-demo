A microservice-based distributed system built with Jolie demonstrating peer registration and service communication.

# Jolie Microservices Demo

A simple distributed system built using the Jolie programming language to demonstrate microservice communication, service interfaces, and peer registration.

## Architecture

Client → Gateway Service → Peer Service

The system contains three components:

- **Gateway Service** – handles peer registration
- **Peer Service (Jeer)** – registers itself and exposes a peer-to-peer operation
- **Client** – sends a request to the gateway

## Features

- Microservice architecture
- Gateway service pattern
- Peer registration system
- Peer-to-peer communication
- Configurable ports via configuration file

## Project Structure

```
jolie-microservices-demo
│
├── services
│   ├── jeer.ol
│   └── serverJeerTest.ol
│
├── interfaces
│   └── Interface.iol
│
├── client
│   └── client.ol
│
├── config
│   └── ports.iol
│
├── scripts
│   └── run_demo.sh
│
└── README.md
```

## Technologies

- Jolie
- Service-Oriented Architecture (SOA)
- Microservices
- SODEP protocol

## How to Run

Start the gateway service:

```
jolie services/serverJeerTest.ol
```

Start the peer service:

```
jolie services/jeer.ol
```

Run the client:

```
jolie client/client.ol
```

Or run the automated demo:

```
bash scripts/run_demo.sh
```

## Example Output

Sending join request to server...
Response from service: Benvenuto Jeer! Gateway received your request.

## Purpose

This project was developed as part of a university assignment to explore distributed systems and microservice communication using Jolie.