- latency:
  + The time taken by water to travel from one end to another end
  + ex:

  ```html
    - A request starts at t=0
    - Reaches to a server in 1 second (at t=1)
    - The server takes 2 seconds to process (at t=3)
    - Reaches to the client end in 1.2 seconds (at t=4)
     => So, the network latency will be 2.2 seconds (= 1 + 1.2).
  ```

- bandwidth:
  + The capacity of the pipe (communication channel).
    It indicates the maximum water passes through the pipe

- throughput:
  + The water is flowing from the pipe can be represented as ‘Throughput’.
    In performance testing term ‘The amount of data moved successfully from one place to another in a given time period is called Data Throughput‘

- response time:
  + the amount of time from the moment that a user sends a request until the time that the
    application indicates that the request has completed and reaches back to the user

[source](https://www.perfmatrix.com/latency-bandwidth-throughput-and-response-time/)