FROM nginx:1.21
COPY src /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
