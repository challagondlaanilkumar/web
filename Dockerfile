FROM nginx
RUN rm -f /usr/share/nginx/html/index.html
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/nginx.conf
COPY static/ /usr/share/nginx/html/
ENV CATALOGUE_HOST = "catalogue"