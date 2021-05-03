# Survey about Self-fixed Technical Debt
# About

This is a repository for the paper 

**An Empirical Study on Self-Fixed Technical Debt**

It contains the replication package of the study reported in the aforementioned paper.

# Replication Instructions

Most of the workload to replicate this project is automated through scripts. 

To reduce the effort further, we also automated the creation of an environment for the study.

The instruction to create the environment and replicate the study are described in the following. 

## 1. Bootstrap Virtual Machine

### Requirements

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Install [Vagrant](https://www.vagrantup.com/downloads.html)
3. Install the plugin `vagrant-docker-compose`. In your command prompt or terminal, run:
```shell
$ vagrant plugin install vagrant-docker-compose 
```
4. (Optional) Install the plugin `vagrant-vbguest` (VirtualBox Guest Additions). In your command prompt or terminal, run:
```shell
$ vagrant plugin install vagrant-vbguest 
```

### Using the Virtual Machine (VM)

The VM is controlled via [Vagrant](https://www.vagrantup.com/downloads.html) and contains the configured environment to run all scripts for this study. Mainly, the VM provides:
- SonarQube (version 7.6-community)
- PostgreSQL (version 11, to store SonarQube data)
- Jupyter + Python + libraries (to run scripts)



