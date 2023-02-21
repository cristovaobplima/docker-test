FROM nginx
LABEL  description="site com Brazzino NGINX" maintainer="Colombo cristovaobplima@gmail.com"
RUN cd / && mkdir files && chmod 777 -R files/
COPY ./site/index.html /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html/
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
