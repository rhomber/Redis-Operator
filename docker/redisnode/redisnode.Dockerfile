FROM redis:4.0-alpine

# Add the binary. As it is statically linked, no need to add libc or anything else.
COPY redis-cluster.conf /redis-conf/redis.conf
RUN chmod 777 /redis-conf/redis.conf
ADD ./redisnode /

# Volume for redis server data
VOLUME /redis-data

ENTRYPOINT [ "/redisnode" ]
