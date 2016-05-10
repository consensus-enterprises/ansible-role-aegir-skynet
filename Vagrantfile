# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define 'skynet' do |v|

    v.vm.box = "ubuntu/trusty64"

    v.vm.hostname = 'skynet.local'
    v.vm.network 'private_network', ip: '10.55.55.57'

    v.vm.provider "virtualbox" do |vb|
      vb.memory = 1024
      vb.cpus = 2
    end

    v.vm.provision "shell" do |s|
      s.inline = <<-SHELL
        cd /vagrant
        make deps-ansible
        make ansible
        . d
        #make ansible-playbook-test
        make ansible-playbook-test-idempotence
      SHELL
      s.env = {
        'ANSIBLE_REQUIREMENTS' => 'tests/roles/requirements.yml',
        'ANSIBLE_ROLES_PATH'   => 'tests/roles',
        'ANSIBLE_PLAYBOOK'     => 'tests/playbooks/test.yml',
        'PYTHONUNBUFFERED'     => '1',
        'ANSIBLE_FORCE_COLOR'  => 'true',
        # *N.B.* While this functionality has been implemented in Drumkit, it is
        # currently largely broken in Ansible, due to the shift to dynamic
        # includes in 2.0+.
        #'START_AT_TASK' => 'Install Aegir via Debian packages.',
      }
      s.keep_color = true
    end

  end
end
