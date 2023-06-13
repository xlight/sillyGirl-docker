FROM --platform=${BUILDPLATFORM:-linux/amd64} ubuntu:22.04
#RUN apt-get update
#RUN apt-get install -y wget curl golang
ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG TARGETOS
ARG TARGETARCH

WORKDIR /root
RUN wget https://github.com/cdle/sillyGirl/releases/download/main/sillyGirl_linux_$TARGETARCH
RUN mv sillyGirl_linux_$TARGETARCH sillyGirl_linux && chmod +x sillyGirl_linux
CMD ./sillyGirl_linux -t
