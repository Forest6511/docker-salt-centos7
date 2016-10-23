# Docker SaltStack 

Self study of SaltStack with Docker.

## Docker commands
- get ip address from en0 (mac os)
~~~
ifconfig en0 | sed -nEe 's/^[[:space:]]+inet[[:space:]]+([0-9.]+).*$/\1/p'
~~~
- access the container with ssh after 'docker-compose up -d'
- ip address might be changed
~~~
ssh root@192.168.11.5 -p 2020
~~~
- remove all containers
~~~
docker rm $(docker ps -a |awk '{print $1;}')
~~~ 
- remove all images
~~~
docker rmi $(docker images |awk '{print $3;}')
~~~

## Salt commands
- check clients to operate from master
~~~
# salt-key --list-all
Accepted Keys:
Denied Keys:
Unaccepted Keys:
client1
client2
Rejected Keys:
~~~

- accept clients
~~~
# salt-key --accept-all
The following keys are going to be accepted:
Unaccepted Keys:
client1
client2
Proceed? [n/Y] y
Key for minion client1 accepted.
Key for minion client2 accepted.
~~~

- apply sls
~~~
[root@salt salt]# salt '*' state.apply
~~~