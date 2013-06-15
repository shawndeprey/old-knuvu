## KnuVu

This web application, in its child stages, will be a non-functional demo for
the knuvu process. However, the project is likely to grow into a full product.
As such, we are working to adhere to standards and testing as best as possible.

The initial web server is responsible for:
- Building/Handleing the non-functional front end demo.

## Configuring Your Local Environment

In order to contribute to development of knuvu, you'll need to set-up your
local environment.

### Vagrant and Virtualbox

knuvu uses Virtual Machines to maintain environments for developers.
In order to make this easy, Vagrant is used on top of Virtualbox.

So, install both Virtualbox and Vagrant by following their automated
installers.

- [Vagrant Download](http://downloads.vagrantup.com/)
- [Virtualbox Download](https://www.virtualbox.org/wiki/Downloads)

### Launching the Virtual Machine

Once you clone this repository, change to it, i.e `cd code/knuvu/server/` and
run:

    vagrant up

Your virtual machine will now be automatically downloaded, installed and
configured to run the knuvu web application.

### Interacting with the Virtual Machine

In order to run the web server and interact with the database of the
application, you'll need to SSH into the Virtual Machine.

From your project directory, this is simply:

    vagrant ssh

You'll then be in the virtual machine shared folder. Any changes you make
on your host computer will be instantly reflected into the Virtual Machine's
file system.

### Preparing the Web Application

Initially, and periodically afterwards, you may need to update
the gems for the application. From inside the VM, just run:

    bundle install

Gems will be updated and installed as necessary.

The first time you provision your VM, you'll need to create a database.

    rake db:create

If you receive errors about character encoding at this point, don't panic! This
can be fixed easily. From inside the VM run:

    sudo su postgres
    pg_dropcluster --stop 9.1 main ; pg_createcluster --start --locale en_US.UTF-8 9.1 main
    exit

You may also at this point may get an invalid user account error. This just means we
need to create a PostgreSQL user. From inside the VM run:

    sudo -u postgres createuser -s knuvu_development
    sudo -u postgres psql -c "ALTER USER knuvu_development WITH PASSWORD 'knuvu_development'"

Initially, and periodically, you'll need to migrate the database schema.

    rake db:migrate

To connect to your PostgreSQL Database do the following from inside the VM.

    sudo su postgres
    psql

### Accessing the Web Application

To access the web application outside of the VM, i.e. through a browser, you
can easily do this by the following IP and whatever port you are running the
application on.

    13.37.13.37:3000

## Dependency Changes

As development continues, dependencies are likely to change. The best
way to make sure you're up to date is by running a provision.

From outside the VM:

    vagrant provision

Inside the VM:

    bundle update

## Troubleshooting

VM's and there providers (Virtualbox) can sometimes misbehave.

Your first solution should usually be to restart the VM.

    vagrant reload

If that fails, try forcing it to shutdown, then launching it again.

    vagrant halt -f
    ...
    vagrant up

It's best not to waste time debugging issues within the VM  beyond
restarting it. Because the environment is fully reproducible, you
can simply destroy the VM and re-provision a new one.

    vagrant destroy [-f]
    ...
    vagrant up

*Sometimes, you need to force the VM to be destroyed with the `-f` flag.*

Once the VM finishes provisioning, you'll have a brand new environment
to work from.
