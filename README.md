# Diagrams - Text-based representations of various diagrams

This exists because I was using sequencediagram.org to sketch some processes
for authentication at work. I decide to push the diagram text files to VCS so
that they wouldn't get lost.

And then the thought of copy/pasting them into the UI made me want to throw up.

So I wrote a thing (`./cmd/sequencediagram/open.sh`) to help me do that.

And the rest is history.

## Sequence Diagrams

- `./examples`
    * `auth-keyexchange.txt`: Process of exchanging keys for authenticating a customer
    * `auth-registration-refresh.txt`: Process of refreshing a customer's registration information
    * `auth-registration.txt`: Registration process
    * `auth-token-refresh.txt`: Process of refreshing a user's session token
    * `auth-token`: Process for obtaining a user session token

### Usage:

    ./cmd/sequencediagram/open.sh <path-to-diagram.txt>

### Example:

    ./cmd/sequencediagram/open.sh ./examples/auth-keyexchange.txt
