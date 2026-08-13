# Architecture Boundary

- Read access is limited to a user-selected folder of approved notes.
- Temporary run state records inspected notes, extracted observations, unresolved gaps, and draft sections.
- Reasoning may organize and summarize; it cannot grant tool authority.
- The only write target is a new private draft inside a designated staging directory.
- Sending messages, editing sources, changing permissions, and accessing networks are prohibited.
- The user may pause, redirect, cancel, or take over.
- On failure, preserve the partial draft and list missing or unreadable inputs; do not invent status.
