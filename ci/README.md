# How to run tests

6X:
```bash
docker run --rm -it -v .:/home/gpadmin/pg_cron ghcr.io/greengagedb/greengage/ggdb6_ubuntu24.04:latest bash /home/gpadmin/pg_cron/ci/test_in_docker.bash
```

7X:
```bash
docker run --rm -it -v .:/home/gpadmin/pg_cron ghcr.io/greengagedb/greengage/ggdb7_ubuntu:latest bash /home/gpadmin/pg_cron/ci/test_in_docker.bash
```
