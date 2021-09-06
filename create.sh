#!/bin/bash
oc project hadiyansyah-stage
oc delete template kirom-php-mysql-template
oc delete imagestreams app-kirom
oc delete imagestreams db-kirom
oc delete bc/app-kirom
oc delete dc/app-kirom
oc delete svc/app-kirom
oc delete route/app-kirom
oc delete bc/db-kirom
oc delete dc/db-kirom
oc delete svc/db-kirom
oc delete pvc/db-kirom-claim

oc create -f kirom-php-mysql.yaml
# oc import-image db-mysql:latest --from=quay.io/vohanks3540/mgs-mysql:5.7 --confirm
oc new-app kirom-php-mysql-template