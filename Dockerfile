FROM iklishch/ubuntu-13.10
MAINTAINER Ivan Klishch <ivan@klishch.com>

WORKDIR /app

RUN apt-get install -y wget
RUN wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | apt-key add -
RUN echo deb http://dl.hhvm.com/ubuntu saucy main | tee /etc/apt/sources.list.d/hhvm.list
RUN apt-get update
RUN apt-get install -y hhvm

EXPOSE 80

CMD ["hhvm", "-m", "server"]

