FROM ubuntu:16.04
MAINTAINER kusmirekwiktor@gmail.com

RUN apt-get update && apt-get install -y gzip wget
WORKDIR /opt
RUN wget https://github.com/biod/sambamba/releases/download/v0.6.8/sambamba-0.6.8-linux-static.gz
RUN gzip -d sambamba-0.6.8-linux-static.gz
RUN chmod a+x sambamba-0.6.8-linux-static

ENV PATH=$PATH:/opt/sambamba-0.6.8-linux-static

CMD ["/opt/sambamba-0.6.8-linux-static"]
