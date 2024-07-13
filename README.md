Q: How to quickly proxy SSH from server behind NAT?

A: tun.sh /tmp/tun.lock mothership.server.com -R localhost:2222:localhost:22


crontab:

* */5 * * * tun.sh /tmp/tun.lock mothership.server.com -R localhost:2222:localhost:22


```
git clone https://github.com/chexov/ssh-tun.git
cd ssh-tun/
./tun.sh ./tun.lock dmzserver.com -R localhost:4422:localhost:22

```

```
mkdir ~/bin/
wget https://raw.githubusercontent.com/chexov/ssh-tun/master/tun.sh -O ~/bin/tun.sh
chmod +x ~/bin/tun.sh

```
