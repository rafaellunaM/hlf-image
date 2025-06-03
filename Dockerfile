FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH=$PATH:/usr/local/go/bin

WORKDIR /app
COPY . .

RUN chmod +x scripts/install-tools.sh && scripts/install-tools.sh

CMD ["/bin/bash"]
