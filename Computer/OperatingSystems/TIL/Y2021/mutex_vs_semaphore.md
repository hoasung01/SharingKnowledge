![mutex](../../Assets/mutex.png "mutex")

1. Mutex
- Mutex lock is essentially a variable that is binary nature that provides code wise functionality for mutual exclusion.
- At times, there maybe multiple threads that may be trying to access same resource like memory or I/O etc.
- To make sure that there is no overriding. Mutex provides a locking mechanism.
- Only one thread at a time can take the ownership of a mutex and apply the lock. Once it done utilising the resource and it may release the mutex lock.

2. Semaphore
###Types
- Binary: Only True/False or 0/1 values
- Counting: Non-negative value

[source](https://prepinsta.com/operating-systems/mutex-vs-semaphore/)