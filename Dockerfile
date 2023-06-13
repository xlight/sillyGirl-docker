FROM ubuntu:22.04
RUN apt-get update
ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG TARGETOS
ARG TARGETARCH
RUN apt-get install -y wget curl golang
WORKDIR /root
RUN wget https://github.com/cdle/sillyGirl/releases/download/main/sillyGirl_linux_$TARGETARCH
RUN mv sillyGirl_linux_$TARGETARCH sillyGirl_linux
CMD ./sillyGirl_linux
