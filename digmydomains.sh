HOSTNAME="${COLLECTD_HOSTNAME:-localhost}"
INTERVAL="${COLLECTD_INTERVAL:-60}"

servers="8.8.8.8 195.154.236.164"

while sleep $INTERVAL ; do
	for server in $servers ; do
        response_time=$(dig +stat linuxfr.org @$server | awk '/Query\ time/ {print$4}')
        server_name=$(dig -x $server  +short @$server | awk -F "-" '{print$NF}')
        echo "PUTVAL \"$HOSTNAME/exec-dnscheck/response_time-$server_name\" interval=$INTERVAL N:$response_time"
	done
done
