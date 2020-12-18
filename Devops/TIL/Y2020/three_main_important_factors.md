###there are 3 main important factors in a system

1. Performance
  + Load Balancer
  + CDN
  + Caching
2. Availability ( measure by uptime unit )
  + Master/Slave
  + Replication
3. Scalbility
  + Vertical Scaling
  + Horizontal Scaling
  + Application Server ( code should be stateless )
  + Database Server
    - read more / write less
      a. design master/slave
        + master for read/write
        + many slaves for reading
    - read and write equally
      b. sharding database
