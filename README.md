## Dependencias

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](http://vagrantup.com/)

## Como instalar o ambiente

    git clone https://github.com/shayani/geraldoapp geraldoapp
    cd geraldoapp
    vagrant up

Serão instalados:

* Ubuntu 12.04
* Ruby 1.9.3
* Rails 3.2.18

## Para utilizar o rails pela primeira vez

    vagrant ssh
    rvm --default use 1.9.3
    cd /vagrant
    bundle install
    rails s

### Nas próximas vezes:

	vagrant ssh
	cd /vagrant
	rails s

## Para desligar o ambiente

	vagrant halt

Navegar para o site http://localhost:3001