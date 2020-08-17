```
- IP address -> identifies the computer
- Network port -> identifies the application or service running on the computer
```

###Anology

```
- House or apartment -> IP address -> street address
  All of the apartments share the same street address

- Each apartment has an apartment number -> port number
```

###Port number (use 16bits -> have a value from 0 to 65535)

```
1. 0-1023 (Well known ports)
2. 1024-49151 (Registered ports)
3. 49152-65535 (Client programs)
```

###TCP Sockets

```
A connection btw 2 computers uses a socket
```

###Example

```
- Imagine sitting on your PC at home, and you have two browser windows open.
- One looking at the Google website, and the other at the Yahoo website.
- The connection to Google would be:
  Your PC – IP1+port 60200 ——– Google IP2 +port 80 (standard port)

  The combination IP1+60200 = the socket on the client computer and
  IP2 + port 80 = destination socket on the Google server.

- The connection to Yahoo would be:
  your PC – IP1+port 60401 ——–Yahoo IP3 +port 80 (standard port)

  The combination IP1+60401 = the socket on the client computer and IP3 + port 80 = destination socket on the Yahoo server.

```
