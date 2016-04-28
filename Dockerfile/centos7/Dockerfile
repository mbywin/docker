FROM       centos:7.2.1511
MAINTAINER miaoboyong <mbywin@163.com>

ENV TZ "Asia/Shanghai"
ENV TERM xterm

COPY aliyun-mirror.repo /etc/yum.repos.d/CentOS-Base.repo
COPY aliyun-epel.repo /etc/yum.repos.d/epel.repo

RUN yum install -y curl wget tar bzip2 unzip passwd yum-utils hostname net-tools rsync && \
    yum install -y gcc make automake cmake patch python-devel libpng-devel libjpeg-devel && \
    yum install -y --enablerepo=epel pwgen python-pip && \
    yum clean all

RUN pip install supervisor
COPY supervisord.conf /etc/supervisord.conf

RUN mkdir -p /etc/supervisor.conf.d && \
    mkdir -p /var/log/supervisor

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
