# Timothy Bangma

**Backend Software Engineer** · Distributed Systems · Kotlin · TypeScript · Cloud-Native Microservices  
Waterloo Region, Ontario, Canada · 289 527 3228 · [bangma@sent.com](mailto:bangma@sent.com) · [LinkedIn@timothybangma](https://www.linkedin.com/in/timothybangma)  
GitHub (LLM Assisted): [github.com/sipak-gh](https://github.com/sipak-gh) · SourceHut (Human Only): [git.sr.ht/~sipak](https://git.sr.ht/~sipak)

---

## Summary

Backend software engineer with 10 years of professional experience designing, building, and operating cloud-native distributed systems and microservices. For the past five years I have built live, player-facing backend services for The Sims 4 at EA Maxis in Kotlin, Spring Boot, and TypeScript, serving PC and console players. Track record across zero-downtime legacy migrations, large-scale production data migrations, API design, and observability and production readiness. Experienced with CI/CD, infrastructure as code, Kubernetes, and both GCP and AWS. A go-to technical contact for peers; mentors junior engineers, leads cross-team knowledge sharing, and builds AI-assisted, agentic development workflows.

---

## Technical Skills

**Languages:** Kotlin · Java · TypeScript · JavaScript · Python · Go (Golang) · SQL · Bash · C++ · C · Rust · Zig · Ruby  
**Frameworks & APIs:** Spring Boot · Kotlin Coroutines · Node.js · React · React Native · REST · gRPC · Protocol Buffers · Apache Beam  
**Cloud & Infrastructure:** Google Cloud Platform (GCP: Dataflow, Cloud Spanner, Cloud Storage) · Amazon Web Services (AWS) · Kubernetes · Helm · Docker · Terraform · CloudFormation · Troposphere · HashiCorp Vault  
**Databases & Streaming:** PostgreSQL · Cloud Spanner · Oracle (PL/SQL) · MongoDB · Redis · Elasticsearch · Apache Kafka · Liquibase · Flyway  
**CI/CD & Build:** GitLab CI · Jenkins · Gradle · Git  
**Observability & Operations:** Datadog · Grafana · PagerDuty · Spring Boot Actuator · On-Call · Incident Response  
**Testing:** Unit & Integration Testing · MockK · JaCoCo · Load Testing  
**AI & Developer Tools:** GitHub Copilot · Claude Code · LLM Coding Agents · Jira · Linux · GNU Toolchain  
**Practices:** Agile/Scrum · System Design · Microservices Architecture · Technical Design Documents · Code Review · Data Migration · Production Readiness · Mentorship

---

## Work Experience

### EA Maxis, Software Engineer III (Server)

*Nov 2021 – Present*  
`Kotlin · Spring Boot · TypeScript · gRPC · Apache Beam · Cloud Spanner · Elasticsearch · Kubernetes · GCP`

- One of three engineers on the zero-downtime migration of The Sims 4 Gallery, a legacy C++ user-generated content (UGC) hosting service, to a cloud-native Kotlin/Spring Boot microservices architecture on Kubernetes; contributed a large share of the implementation, eliminating multi-day maintenance windows, cutting deploy time to under one hour, and preserving full backward compatibility with PC and console clients (18k+ DAU)  
- Partner with game client engineers to scope and design server-side specifications for Expansion Pack features, balancing response times, caching strategy, and external service dependencies; authored technical design documents for social and player-safety features (player profiles, friends and following, block lists, content reporting via a third-party moderation vendor) and implemented them against EA platform services  
- Delivered privacy and compliance features, including right-to-be-forgotten and subject-access-request handling, and migrated service secrets into a centralised secrets manager  
- Contributed to production readiness for launch: built monitoring dashboards, wrote deployment and operations runbooks, and improved load testing; reverse-engineered legacy C++ checksum and signing logic to keep the new service byte-compatible with existing clients  
- Designed and built a greenfield batch data-processing pipeline in Kotlin for large-scale migrations across relational, object-storage, and search backends, replacing a heavyweight framework-based tool with a minimal-dependency design  
- Executed large-scale production data and schema migrations with no customer-facing latency impact: rehearsed in non-production environments, monitored metrics and scaled services in real time, and coordinated release windows with QA and partner teams  
- Shipped server features for Expansion Packs and live events, including event and progression APIs, Gallery search filters, and scheduled content-import jobs using distributed locking and caching  
- Serve as the team's primary bug fixer and participate in the on-call rotation, responding to production incidents and debugging issues end to end across Kotlin services, the legacy C++ codebase, and game client integrations  
- Built agentic AI development workflows using LLM coding agents, with continuous build, test, lint, and code-generation feedback loops and language server (LSP) integration so agents iterate and self-correct with minimal oversight  
- Presented internal tech talks on mocking EA platform services for testing and on idiomatic functional Kotlin for data pipelines; mentor a junior engineer on planning and delivery, review code across teams, and act as a go-to technical contact for teammates

### Arctic Wolf, Software Developer, Infrastructure (Member of Technical Staff)

*Nov 2020 – Oct 2021*  
`Golang · Python · Apache Kafka · CloudFormation · Troposphere · AWS · Kubernetes`

- Built high-throughput, real-time streaming data processing (ETL) applications on Apache Kafka within Arctic Wolf's security telemetry pipeline, ingesting and normalising security data from diverse sources, including system metrics, network logs, disk usage, and monitoring platforms (Grafana, Datadog), at scale for downstream security services  
- Developed internal Python tooling and build utilities to improve developer productivity and streamline the team's development workflow

### HP Inc, Software Developer

*May 2018 – Oct 2020*  
`Java · Spring Boot · Node.js · Redis · MongoDB · Docker · AWS · Terraform · Jenkins`

- Developed a cloud-native microservice platform (\~10 services, team of 6–8) exposing REST APIs for on-demand printing to customers across North America and China  
- Progressed to **Lead DevOps Engineer**, taking full ownership of CI/CD pipeline stability, Jenkins infrastructure, Terraform infrastructure-as-code (IaC) environments in AWS, and security automation including certificate and key rotation

### ArcelorMittal Dofasco, Software Developer

*Jan 2016 – Apr 2018*  
`Java · Kotlin · Spring Boot · Node.js · PL/SQL · Oracle SQL`

- Built an automated sales reporting service that extracted and formatted steel inventory data from Oracle databases into actionable reports, accelerating the sale of time-sensitive devalued inventory  
- Joined as a co-op student and was offered a full-time position upon graduation

---

## Notable Projects

- **[portfolio](https://sipak-gh.github.io)** (JavaScript): My project portfolio, a static site detailing my various side projects on GitHub; some listed below.
- **[courseware](https://sipak-gh.github.io/courseware/)** (Writing): An open library of long-form courses covering C, assembly, Zig, Go, React, Git and philosophy. I build and follow them to deepen my own expertise, and share them online through a book-style reader site, for anyone to use.
- **[zen](https://github.com/sipak-gh/zen)** (Zig): `ze`, a tiny modal editor following the influence of vi. Meant to get out of your way.
- **[parc](https://github.com/sipak-gh/parc)** (Go): A privacy-focused public archival tool, allowing you to encrypt files and filenames with your ed25519 SSH key. Built on [age](https://github.com/FiloSottile/age).
- **[vibabel](https://github.com/sipak-gh/vibabel)** (Rust): A fun terminal vi-based editor to let you modify the _nearly_ infinite pages of Borges' Library of Babel.
- **[esp32-firmware](https://github.com/sipak-gh/esp32-firmware)** (Xtensa Assembly): from-scratch course on bare-metal ESP32 firmware, including a 208-byte Xtensa assembly "Hello, World!" and a custom firmware-image packer verified against Espressif's tool.

---

## Education

**Mohawk College**, Software Development Advanced Diploma (Co-op)  
*Sept 2014 – Dec 2017*

---

## Interests

Guitar · Amateur powerlifting · Low-level and embedded programming in Rust and Zig, including building custom firmware for ESP32 microcontrollers  
