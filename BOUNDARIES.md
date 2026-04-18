# A2A-SIN-Chatroom Boundaries

## Role
`A2A-SIN-Chatroom` owns multi-platform chat management, platform auth status monitoring, and Chatroom coordination contracts.

## This repo should own
- Chatroom management, routing, and coordination flows
- platform auth status evidence, recovery, and session-health handling
- Chatroom contracts used by downstream automation agents
- runbooks tied to multi-platform chat management and auth monitoring

## This repo must not own
- individual platform implementation logic outside auth/status coordination
- organization SSOT docs or architecture canon
- downstream business logic unrelated to Chatroom ownership

## Hard rules
- Keep changes scoped to Chatroom chat management and auth-status monitoring.
- Move platform-specific behavior back to the repos that own it.
- Keep reusable contracts focused on chat coordination and session health.
