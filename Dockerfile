FROM ubuntu
RUN apt-get update 
RUN apt-get install curl -y
RUN curl -fsSL https://code-server.dev/install.sh | sh
ENTRYPOINT code-server
