# vagrant multi_master README
Author: stephen-ka
Company: n0cloudlabs

### Mac Prerequisite
You will need homebrew.  If you do not know what homebrew is, you probably should not be here.

### Installation
Vagrantfile uses Virtualbox to manage the virtual dependencies. You can directly download virtualbox and install or use Homebrew for it. Note: Mac requires that you authorize the application once you install it.
`brew install --cask virtualbox`

Now install vagrant
`brew install --cask vagrant`

## Getting Started:
1. Install Plugins
`vagrant plugin install vagrant-hostmanager`

2. Generate SSH Keys for vbox ssh
 `ssh-keygen -t rsa -N "" -f $(pwd)/id_rsa_vagrant`

3. Deploy vagrant script.
`vagrant up`

### General Commands
 `vagrant ssh` Will connect you to MASTER or use `vagrant ssh <servername>`

Once connected to the master, you can ssh into any lab server using keys (without a password) with command: `ssh vagrant@<serverhostname>`

`vagrant halt`  Stops the lab and powers off VMs - Keeps all data
`vagrant destroy -f`  Stops the lab and powers off VMs and DELETES ALL VMs - LOOSE ALL DATA

### Future Updates
1. Move script to external file, add package manager conditionals.
2. Import gpg keys as part of scripts.
3. Port forwards all rem'd out due to conflict.  can only forward on one guest.
4. Add shared disk for clusters.

### Running vagrant through a terminal
Fix bash profile for remote terminal functionality or run command from terminal manually
```shell
eval ssh-agent -s
ssh-add
```
