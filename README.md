
# Apache 2 Playground

### Docker

    $ docker build -t httpd-playground .
    $ docker run -dit -p 8080:80 httpd-playground
    $ docker run --rm -p 8080:80 httpd-playground

** docker run: _-d : To start a container in detached mode_

** docker run: _-i : Keep STDIN open even if not attached_

** docker run: _-t : Allocate a pseudo-tty

** docker run: _--rm : By default a container’s file system persists even after the container exits. This makes debugging a lot easier (since you can inspect the final state) and you retain all your data by default. But if you are running short-term foreground processes, these container file systems can really pile up. If instead you’d like Docker to automatically clean up the container and remove the file system when the container exits, you can add the --rm flag_

### From the browser

vi /etc/hosts

    ...
    127.0.0.1	    localhost
    127.0.0.1       www.site1.domain.co.uk site1.domain.co.uk 
    127.0.0.1       www.site2.domain.co.uk site2.domain.co.uk 
    127.0.0.1       www.site3.domain.co.uk site3.domain.co.uk
    ...

The following URLs should valid:

  - http://www.site1.domain.co.uk:8080
  - http://www.site2.domain.co.uk:8080
  - http://www.site3.domain.co.uk:8080

### Inside the container

    $ docker exec -it $1 /bin/bash

Apache home: /usr/local/apache2

### Apache 2 configuration

Listen -> https://httpd.apache.org/docs/current/bind.html

### Clean up

    $ docker rmi $(docker images -f "dangling=true" -q)