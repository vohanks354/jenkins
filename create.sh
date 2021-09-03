#!/bin/bash

oc delete template kirom-php-mysql-template
oc create -f kirom-php-mysql.yaml
oc import-image db-mysql:latest --from=quay.io/vohanks3540/mgs-mysql:5.7 --confirm
oc new-app kirom-php-mysql-template