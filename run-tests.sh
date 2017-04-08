#!/bin/sh
docker run -it --rm \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(PWD):/code \
--entrypoint="make" \
-e IAM_ROLE="cloudformation" \
ktruckenmiller/ansible:dind \
test
