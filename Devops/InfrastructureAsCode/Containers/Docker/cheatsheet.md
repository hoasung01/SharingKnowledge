[docker-cheat-sheet](https://github.com/wsargent/docker-cheat-sheet)
[devhints](https://devhints.io/docker-compose)
[devtools](https://phase2.github.io/devtools/common-tasks/ssh-into-a-container/)


###Return low-level information on Docker objects
  docker inspect <docker_name>

###docker filter
  docker ps -a -f status=exited

###access mysql image from local machine
  ```html
    services:
      mysql:
        image: mysql:5.7
        command: mysqld --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci --max_allowed_packet=1073741824
        restart: always
        ports:
          - "53306:3306"
  ```
  mysql -P <port:53306> --protocol=tcp -u <username> -p