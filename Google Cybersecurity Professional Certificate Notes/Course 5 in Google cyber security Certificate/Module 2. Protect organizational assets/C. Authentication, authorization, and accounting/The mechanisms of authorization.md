Authorization and Key Security Principles

- Authorization determines what authenticated users are allowed to do, working in tandem with authentication which verifies user identity.
- It is heavily influenced by the principle of least privilege, ensuring access is granted only for as long as necessary, and the separation of duties, which prevents a single individual from having excessive control to misuse a system.

Access Control Mechanisms

- These principles apply broadly to all systems, including networks, databases, and processes, not just individuals.
- Two common access controls for securing data over a network are HTTP basic auth and OAuth.

HTTP Basic Auth and OAuth

- HTTP basic auth, while still used by some websites, is considered vulnerable due to transmitting usernames and passwords openly. HTTPS is a more secure alternative.
- OAuth is an open-standard authorization protocol that allows secure sharing of designated access between applications using API tokens, which are encrypted blocks of code containing user information and permissions, without exposing sensitive login credentials.