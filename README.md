Q: How to quickly proxy SSH from server behind NAT?
A: ```tun.sh /tmp/tun.lock mothership.server.com -R localhost:2222:localhost:22
```


```
crontab:

* */5 * * * tun.sh /tmp/tun.lock mothership.server.com -R localhost:2222:localhost:22

```

