#!/bin/bash

HOST_URL="test.k8s.home:32080"

echo "GET http://$HOST_URL/podinfo/status/200" | vegeta attack -duration=15m -rate=100/s &
(sleep 240; echo "GET http://$HOST_URL/podinfo/status/404" | vegeta attack -duration=7m -rate=8/s) &
(sleep 240; echo "GET http://$HOST_URL/podinfo/status/503" | vegeta attack -duration=7m -rate=7/s) &

wait
echo "All scripts completed"