```html
1. deadlock: occurs when two competing processes are waiting for each other to finish, allowing neither to finish.

2. livelock: occurs when two threads are dependent on each other signals and are both threads respond to each others signals. If this is the case, the threads can cause a loop similar to something between a deadlock and starvation.

3. starvation: occurs when a process never gains accesses to resources, never allowing the program to finish.

4. race conditions: occurs when processes that must occur in a particular order occur out of order due to multiple threading
```

[source](https://austingwalters.com/multithreading-common-pitfalls/)