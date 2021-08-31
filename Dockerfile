FROM ubuntu:20.04

ARG DOGECOIN_VERSION
ENV PATH $PATH:/opt/dogecoin/bin

ADD https://github.com/dogecoin/dogecoin/releases/download/v${DOGECOIN_VERSION}/dogecoin-${DOGECOIN_VERSION}-x86_64-linux-gnu.tar.gz /tmp
RUN cd /opt \
 && tar zxvf /tmp/dogecoin-${DOGECOIN_VERSION}-x86_64-linux-gnu.tar.gz \
 && install -m 0755 -o root -g root -t /usr/local/bin dogecoin-${DOGECOIN_VERSION}/bin/* \
 && rm /tmp/dogecoin-${DOGECOIN_VERSION}-x86_64-linux-gnu.tar.gz

EXPOSE 22555 22555

WORKDIR /usr/local/bin
CMD ["/usr/local/bin/dogecoind"]