# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "i.syedali@hotmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://10.128.0.14:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
