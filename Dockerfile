FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install -y wget curl golang
WORKDIR /root
RUN /bin/sh -c 'set -ex && \
    ARCH=`uname -m` && \
    if [ "$ARCH" == "x86_64" ]; then \
       echo "x86_64" && \
    else \
       echo "unknown arch" && \
    fi'
RUN wget https://github.com/cdle/sillyGirl/releases/download/main/sillyGirl_linux_$ARCH
RUN mv sillyGirl_linux_$ARCH sillyGirl_linux
CMD ./sillyGirl_linux
