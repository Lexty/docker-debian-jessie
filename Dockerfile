FROM debian:jessie
MAINTAINER Alexandr Medvedev <alexandr.mdr@gmail.com>

RUN addgroup -gid 1000 user && \
    useradd -d /data -s /bin/bash -g 1000 -u 1000 user && \
    mkdir /data && \
    chown user:user /data

VOLUME /data

CMD /bin/bash