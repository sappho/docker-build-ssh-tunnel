# Proxy over SSH

A package of Docker image builds that create port proxies over SSH tunnels. Images included:

* `sappho/ssh-tunnel` - A base image, which is not intended to be run directly.
* `sappho/ssh-tunnel-ldap` - An LDAP proxy, which simply proxies port 389.

The Gihub project is at <https://github.com/sappho/docker-build-ssh-tunnel>. Feel free to fork it and submit pull requests.

# Creating a Proxy

Start a persitent container like this:

    docker run --name ldap-proxy -d --restart=always \
    --volume /srv/docker/ldap-proxy/ssh:/root/.ssh \
    -e DEST=ssh-tunnel@example.com -e MONITOR=20000 sappho/ssh-tunnel-ldap

Use `--link ldap-proxy:ldap-proxy` when running up another container that needs access to your LDAP server.

Before doing this set up `/srv/docker/ldap-proxy/ssh` with the following three files:

    -rw------- 1 sappho sappho 1679 Jan 23 12:47 id_rsa
    -rw-r--r-- 1 sappho sappho  399 Jan 23 12:47 id_rsa.pub
    -rw-r--r-- 1 sappho sappho  666 Jan 23 13:21 known_hosts

The files can be built using `ssh-keygen` and then running an initial manual `ssh` connection, like this:

    ssh-keygen -f /srv/docker/ldap-proxy/ssh/id_rsa -N ''
    
    touch /srv/docker/ldap-proxy/ssh/known_hosts
    
    cat /srv/docker/ldap-proxy/ssh/id_rsa.pub | \
    ssh -o UserKnownHostsFile=/srv/docker/ldap-proxy/ssh/known_hosts \
    ssh-tunnel@example.com 'cat >> ~/.ssh/authorized_keys'

# License

This project is licensed under the [GNU General Public License, version 3](http://www.gnu.org/licenses/gpl-3.0.en.html).
