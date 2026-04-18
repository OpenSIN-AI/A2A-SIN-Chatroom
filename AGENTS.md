# Agent: A2A-SIN-Chatroom

**Team:** OpenSIN-AI
**Protocol:** A2A (Agent-to-Agent)
**Status:** Active
**Repository:** https://github.com/OpenSIN-AI/A2A-SIN-Chatroom

## Capabilities

A2A agent for Chatroom integration within the OpenSIN ecosystem.

## Communication

- **Input:** A2A messages from orchestrator
- **Output:** A2A messages to other agents
- **MCP:** Standard OpenSIN MCP servers

## Security

- All operations logged to the approved artifact storage surface
- Requires authorization token
- Guardrails enforced on all inputs/outputs

## Setup

```bash
git clone https://github.com/OpenSIN-AI/A2A-SIN-Chatroom.git
cd A2A-SIN-Chatroom
bun install
bun start
```

## Boundary Guidance

When modifying this repo:

- Prefer Chatroom management and auth-status monitoring work.
- Do not turn this repo into a generic multi-platform bucket.
- Do not redefine organization docs, architecture, or runtime canon here.
- Move non-Chatroom behavior back to the repos that own those surfaces.

## License

Apache-2.0
