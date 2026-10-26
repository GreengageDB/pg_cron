#!/usr/bin/env bash

bash /home/gpadmin/pg_cron/ci/install.bash
cd /home/gpadmin/pg_cron
su gpadmin -c 'bash ci/test.bash'
