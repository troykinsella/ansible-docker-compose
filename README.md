# troykinsella.docker-compose

An ansible role to install docker-compose by binary download.

[![Build Status][travis-image]][travis-url]

An ansible role that installs the `docker-compose` binary on Linux from the GitHub release 
as per the instructions listed here:
https://docs.docker.com/compose/install/

## Role Variables

See `defaults/main.yml` for default values.

* docker_compose_version: The docker-compose version to install.
* docker_compose_os: The OS for which to select the binary.
* docker_compose_architecture: The architecture for which to select the binary.
* docker_compose_url: The URL at which the binary can be downloaded.
* docker_compose_binary_path: The full path to the installed docker-compose binary.
* docker_compose_binary_mode: The file mode of the docker-compose binary.
* docker_compose_binary_user: The docker-compose binary user.
* docker_compose_binary_group: The docker-compose binary group.

## Example Playbook

    - hosts: servers
      roles:
         - role: troykinsella.docker-compose
           docker_compose_version: 1.22.0

## Testing

Prerequisites:
* `docker`
* `ruby` > 2.3
* `bundler`

Test:

```bash
bundle install
bundle exec kitchen test
```

## License

MIT © Troy Kinsella

[travis-image]: https://travis-ci.org/troykinsella/ansible-docker-compose.svg?branch=master
[travis-url]: https://travis-ci.org/troykinsella/ansible-docker-compose
