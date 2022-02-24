# Pluralith Test Harness

This repo contains the files necessary to run a quick 'n dirty test harness for Pluralith, specifically spinning up multiple Vagrantboxes with the Virtualbox provider, and installing XFCE.

Vagrant Boxes:

* Ubuntu 20.04
* Ubuntu 21.10
* Centos 8.5


## Usage

* Clone this repo.
* Install Virtualbox and the VirtuaBox Extension Pack (Links for both [here](https://www.virtualbox.org/wiki/Downloads)).
* Install [Vagrant](https://www.vagrantup.com/docs/installation).
* Run `vagrant up` from the root of this repo.

## To Do

* Add more boxes
* Include installation with bootstrap script(s) when headless/noninteractive install is possible
* Create test/sample terraform files to validate Pluralith functionality