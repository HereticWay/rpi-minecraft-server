FROM alpine

RUN apk add --no-cache \
    rsync \
    tzdata

RUN adduser -D -H -u1000 synchronizer

VOLUME /App/world
VOLUME /App/world-tmpfs
WORKDIR /App
COPY ./load-world.sh /App
COPY ./save-world.sh /App
COPY ./run.sh /App
COPY ./crontab /App

RUN chmod +x load-world.sh save-world.sh run.sh
RUN chown -R synchronizer:synchronizer /App
RUN crontab -u synchronizer /App/crontab

CMD [ "/App/run.sh" ]
