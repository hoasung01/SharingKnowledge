```html
1. User-Level Thread
- The user-level threads are managed by users and the kernel is not aware of it.
- These threads are faster to create and manage.
- The kernel manages them as if it was a single-threaded process.
- It is implemented using user-level libraries and not by system calls. So, no call to the operating system is made when a thread switches the context.
- Each process has its own private thread table to keep the track of the threads.

2. Kernel-Level Thread
- The kernel knows about the thread and is supported by the OS.
- The threads are created and implemented using system calls.
- The thread table is not present here for each process. The kernel has a thread table to keep the track of all the threads present in the system.
- Kernel-level threads are slower to create and manage as compared to user-level threads.

3. Hybrid threads
```
[source](https://afteracademy.com/blog/what-is-a-thread-in-os-and-what-are-the-differences-between-a-process-and-a-thread)