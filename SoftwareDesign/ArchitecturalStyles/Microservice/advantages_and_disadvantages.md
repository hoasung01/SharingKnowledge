###Advantages
- written in any languages/frameworks
- independently in develop, deploy, redeploy, version and scale component services
  in seconds without compromising the integrity of an application
- better fault isolation keeps other services to work even though on got failed
- Zero downtime upgrades
- Services can be of from different servers or even different datacenters
- Interaction with other services in a well-defined protocol
- Monitor, capture, and report health diagnostics
- Reliable and self-healing
- Supports continuous integration and delivery
- Easy to transfer knowledge to the new team member
- Easy to integrate with third parties

###Disadvantages
- The additional complexity for implementation of an inter-process communication mechanism between services.
- Writing automated tests involving multiple services is challenging and It can be difficult to create consistent testing environments.
- Requires high level of automation to manage multiple instances of different types of services in production.
- Everyone has to manage eventual consistency as maintaining string consistency becomes extremely difficult.
- Managing multiple databases and their transactions are difficult.
- Inter-process calls are slow.
- Debugging will become difficult.
- Complexity in DevOps.
- Production monitoring cost is higher.
- Formal documentation overhead.
- Lack of governance.

[source](https://www.dotnettricks.com/learn/microservices/architecture-example-advantages)
