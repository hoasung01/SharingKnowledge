- multithreading if your program is [network bound, IO-bound] tasks
  + is concurrent

- multiprocessing if it's [CPU bound] taks
  + achieves true parallelism

###Examples for multithreading
- A program is an executable file like chrome.exe
- A process is an executing instance of a program. When you double click on the Google Chrome icon on your computer, you start a process which will run the Google Chrome program.
- Thread is the smallest executable unit of a process. A process can have multiple threads with one main thread. In the example, a single thread could be displaying the current tab you’re in, and a different thread could be another tab.
[source](https://www.educative.io/blog/multithreading-and-concurrency-fundamentals)
