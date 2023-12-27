FROM ubuntu:22.04

RUN mkdir -p /app

WORKDIR /app
COPY src/hello_world/scripts/ ./

ENTRYPOINT [ "./entrypoint.sh" ]
CMD ./hello_world.sh
