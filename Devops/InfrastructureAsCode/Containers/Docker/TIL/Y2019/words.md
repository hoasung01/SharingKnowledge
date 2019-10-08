### image:
```ruby
an image is immutable, sharable file that is stored in a Docker-trusted registry.
A docker image is built up from a series of read-only layers. Each layer represents
an instruction that is being given in the image's Dockerfile. An image hold all
the required binaries to run.
```

### container:
```ruby
 an instance of an image is called a container.
 A container is just an executable image binary that is to be run
 by the host OS. A running image is a container.
```

### Dockerfile:
```ruby
a Dockerfile is a text document that contains all of the commands / build instructions,
an user could call on the command line to assemble an image. This will be saved as a
Dockerfile
```

### Docker-Compose:
```ruby
compose is a tool for defining and running multi-container Docker applications.
With Compose, you use a YAML file to configure your's application services (containers).
Then with a single command, you create and start all the services from your configuration.
The Compose file would be saved as docker-compose.yml
```