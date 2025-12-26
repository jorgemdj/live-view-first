# live-view-first
 
Lightweight, scalable, and fault-tolerant — leveraging the BEAM’s power to enable real-time, serverless connections between nodes.

## About this project

This repository is a **minimal experimental project** created to explore and understand the fundamentals of **Elixir, Phoenix and LiveView**.

The focus was deliberately **not on UI/UX or visual design**. The application consists of a simple form that updates **dynamically and in real time** across multiple devices connected to the same network, without client-side JavaScript state management.

The goal was to observe how LiveView handles:

- Real-time synchronization between clients  
- State management on the server  
- Fault tolerance and process isolation via the BEAM  
- Developer ergonomics when building reactive interfaces without JS frameworks  

## Scope and limitations

- No design system or UI polish  
- No authentication or authorization  
- No production hardening  
- Minimal domain logic  

This project exists purely as a **learning exercise and hands-on familiarization** with the language and its ecosystem, not as a production-ready solution.

## Motivation

Understanding how far server-driven real-time interfaces can go — and where they shine — before introducing additional complexity.
