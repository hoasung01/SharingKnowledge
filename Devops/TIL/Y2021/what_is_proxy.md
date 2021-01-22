###what is proxy
- proxy means "the authority to reporesent someone else"

```html
  client <-> proxy <-> server
```

###forward proxy (proxy server)
- purpose:
  + to avoid state or institutional browsing restrictions
  + to block access to certain conten
  + to protect their identity online

###reverse proxy
- a server that sits in front of web servers and forwards client (e.g web server)
requests to those web servers
- purpose: increase security, performance and realibility
  + load balancing
  + protection from attacks (e.g DOsS attack)
  + global server load balancing
  + caching
  + SSL encryption


###recap

```html
      User side     |    Server side
client <-> proxy  <---> reverse_proxy <-> real server
```