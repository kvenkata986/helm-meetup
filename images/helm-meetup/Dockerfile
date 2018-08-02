FROM busybox

MAINTAINER kvenkata986@gmail.com

ADD files/index.html /www/index.html
EXPOSE 80
CMD httpd -p 80 -h /www; tail -f /dev/null
