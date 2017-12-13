# collectd-scripts

##  Measure dns server response time with dig

digmydomains.sh

### use it

With here document

```bash
cat > /etc/collectd/collectd.conf.d/digmydomains.conf<<EOF
LoadPlugin exec

<Plugin exec>
        Exec user "/usr/local/scripts/collectd/digmydomains.sh"
</Plugin>
EOF
```

## Get snmp metrics from Fortigate

```bash
snmp.conf
```
