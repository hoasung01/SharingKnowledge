[connection_pool](https://sudhir.io/understanding-connections-pools/)

### recap

- communicating systems are two Unix processes,the [ICP] system
  will handle allocating memory for the data exchanged and will
  handle pick-up and delivery of the bytes on both sides

- commnunicating systems are running on different computers, they will
  likely communicate over [TCP], which will handle moving the data
  over a wired or wireless system between the computers

- connection handling architectures
  + processes
  + threads
  + event loop
  + coroutines / green-threads / fibers / actors