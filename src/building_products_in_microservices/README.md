# Talk: Building Products in the Age of Microservices

## Abstract
The Unix philosophy of "Do One Thing and Do It Well" has found new popularity
and followers under the web-specific term "Microservices". While buzzworthy, the success
of businesses built on such collections of small, focused services has been proven out
by companies like Amazon, Netflix, and Google. This success is achievable anywhere,
however it requires a specific shift in product and engineering perspective, which can
be difficult to achieve in established organizations.

Drawing from his experience as a UI engineer, lead of the VMware's Cloud Management UI teams,
and a former core contributor to OpenStack, Michael Krotscheck will present contrasting examples
of how such services have been implemented in both corporate and open source communities.
He will share some hard-learned lessons about such efforts, and provide a number of recommendations
which you and your team can immediately put to use.

## Outline
At a high level, this talk uses the point of view of a UI engineer
to suggest a different way of thinking about services, products,
and deployment patterns.

1. Introduction
    1. Who I am, and why that matters.<br/>
       <small>(How a front-end developer thinks about products)</small>
2. The promise of microservices<br/>
   <small>Context: Using Amazon as an example, including Jeff Bezos' API Mandate</small>
    1. Narrow focus, smaller teams.
    2. Loose coupling.
    3. Flexible product design.
    4. Natural evolution.
    5. Limited Blast Radius
3. Microservices in Practice<br/>
   <small>Context: Using OpenStack as an example</small>
    1. Consolidation of common infrastructure.
    2. NIH Syndrome and Open Source
    3. Inconsistent API Surface and behavior.
    4. Monolithic UI - Why are we doing microservices again?
    5. Silo UI - UI and Service become tightly coupled.
3. The Product Engineer's Perspective
    1. The most compelling use cases are at the intersection of services.
    2. A Product is a collection of services, tailored to a use case via a UI.
    3. The UI is the customer of the API.
4. Things that will speed you up.
    1. A BDFL (Empowered Technical Mandate)
    2. Documentation (10 minutes to productivity)
    3. Developer Mobility (10 minutes to productivity)
    4. API Lifecycle Management
    1. Boring Technology
    2. Common frameworks and Tooling
    3. Two-Pizza Teams & Dunbar's Number
    4. Trust
    5. Use what's already there (e.g. features already implemented in the browser)
    6. CI/CD
5. Things that will slow you down.
    1. Knowledge Barriers
    2. Inconsistent API Surfaces
    3. Privileged access
    4. Snowflake Technology Choices
    5. Fragmentation
    6. Organizational Hierarchies
    7. Unmanaged Careers
    8. Tight Coupling
    9. Fear of Bugs.
6. Things every microservice should do:
    1. OAuth2
    2. CORS
    3. Consistent, RESTful API Surface
    4. Batch Requests
    5. Common API Testing Harness
7. Things that are easy to get wrong.
    1. Misunderstanding who makes technical decisions (bottom up not top down)
    2. Consensus Engineering
    3. Communication
8. Questions

## Takeaways

1. How to think of an API layer from a product engineering perspective.
2. Common pitfalls and good practices in building microservices.
3. Technical problems that you should only solve once.
