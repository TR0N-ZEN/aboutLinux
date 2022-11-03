sources:
  + https://docs.docker.com/engine/reference/commandline/
  + https://docs.docker.com/engine/reference/commandline/images/#filtering
  + https://docs.docker.com/engine/reference/commandline/images/#format-the-output


```bash
docker image ls --filter=reference=abc
docker image ls --filter=reference=abc:xyz
docker image ls --filter=reference=*:xyz
docker image ls --filter=reference=*:latest --format '{{.Size}}' | sed -ne 's/GB//p' | awk '{ SUM += $1; } END {print SUM }'
```