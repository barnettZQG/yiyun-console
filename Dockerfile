FROM dhub.yunpro.cn/barnett/alpinessl:3.4
MAINTAINER Barnett <zengqingguo@goyoo.com>

RUN mkdir /yiyun

COPY ./assets /yiyun/assets
COPY ./view /yiyun/view
COPY ./yiyun /yiyun/yiyun

WORKDIR /yiyun

RUN chmod 655 /yiyun/yiyun

EXPOSE 8080

ENTRYPOINT ["/yiyun/yiyun"]