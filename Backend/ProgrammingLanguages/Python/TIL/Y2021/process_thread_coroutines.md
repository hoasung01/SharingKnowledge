```html
1. process
  - basic unit of the system for resource allocation and scheduling
2. thread
  - lightweight process
3. coroutines
  - lightweight thread of user mode

###summary:
1. the process can create a thread, the thread is attached to the process,
  the thread can contain multiple coroutines,
2. global variables are not shared between processes, global variables are
  shared between threads, but attention should be paid to resource competition.
  Neither share local variables
3. multi-process development is more stable than single-process, multi-thread
  development, but multi-process development is more expensive than multi-threaded development resources.
4. multi-threaded development, thread execution is unordered, and the coroutines are
  executed alternately in a certain order.
5. the coroutine is mainly used in network crawlers and network requests,
  opening up a coroutine takes about 5k space, opening up a thread requires 512k space, and the development process takes up the most resources.
6. A thread can have multiple coroutines. A process can also have multiple coroutines
  separately, so that multi-core CPUs can be used in Python.
```

[src](https://learn-gevent-socketio.readthedocs.io/en/latest/general_concepts.html)