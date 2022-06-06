FROM openjdk:17

RUN adduser --no-create-home --user-group --uid 1000 appuser

# For amd4 platform:
ADD https://github.com/itzg/mc-server-runner/releases/download/1.8.1/mc-server-runner_1.8.1_linux_amd64.tar.gz /tmp
RUN tar -x -C /usr/local/bin -f /tmp/mc-server-runner_1.8.1_linux_amd64.tar.gz

# For armv7 platform:
#ADD https://github.com/itzg/mc-server-runner/releases/download/1.8.1/mc-server-runner_1.8.1_linux_armv7.tar.gz /tmp
#RUN tar -x -C /usr/local/bin -f /tmp/mc-server-runner_1.8.1_linux_armv7.tar.gz

VOLUME /App
VOLUME /App/world
WORKDIR /App
RUN chown -R appuser:appuser /App

USER appuser
STOPSIGNAL SIGTERM
CMD [ "/usr/local/bin/mc-server-runner", "/App/run.sh" ]
