# Jenkins * Nginx in Vagrant

Quick jenkins server in Vagrant environment.

## How to test

```sh
bundle install --path vendor
bundle exec librarian-puppet install --path vendor/modules
vagrant up --provision
```
