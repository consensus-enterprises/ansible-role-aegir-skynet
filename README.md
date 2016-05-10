Aegir Skynet
============

[![Build Status](https://travis-ci.org/ergonlogic/ansible-role-aegir-skynet.svg?branch=master)](https://travis-ci.org/ergonlogic/ansible-role-aegir-skynet)

Installs the experimental Skynet queue for Aegir.


Requirements
------------

None.


Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

    skynet_enable: True

Whether to enable the Skynet queue daemon.

    skynet_repo: https://github.com/ergonlogic/skynet.git

Which repo to use when deploying the Skynet queue daemon.

    skynet_version: master

Which branch or tag to use when deploying the Skynet queue daemon.

    skynet_update: False

Whether to keep The Skynet git repository updated.


Dependencies
------------

  - ergonlogic.aegir (Installs Aegir).


Example Playbook
----------------

    - hosts: servers
      roles:
        - ergonlogic.skynet

After the playbook runs, the Aegir front-end site will be available, as will
the Drush extensions (Provision, et. al.) that do the heavy lifting.


License
-------

GPLv3 or later


Author Information
------------------

This role was created in 2015 by [Christopher Gervais](http://ergonlogic.com/), lead maintainer of the [Aegir Hosting System](http://www.aegirproject.org).

