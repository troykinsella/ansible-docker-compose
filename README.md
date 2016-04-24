troykinsella.docker-compose
===========================

An ansible role to install docker-compose by binary download.

Role Variables
--------------

* docker_compose_version: The docker-compose version to install. Default: 1.7.0.
* docker_compose_os: The OS for which to select the binary. Default: linux.
* docker_compose_architecture: The architecture for which to select the binary. Default: x86_64.
* docker_compose_url: The URL at which the binary can be downloaded. Default: the official source according to OS and architecture variables.
* docker_compose_binary_path: The full path to the installed docker-compose binary. Default: /usr/local/bin/docker-compose.
* docker_compose_binary_mode: The file mode of the docker-compose binary. Default: 0755.
* docker_compose_binary_user: The docker-compose binary user. Default: root.
* docker_compose_binary_group: The docker-compose binary group: Default: root.

Example Playbook
----------------

    - hosts: servers
      roles:
         - role: troykinsella.docker-compose
           docker_compose_version: 1.7.0

License
-------

MIT
