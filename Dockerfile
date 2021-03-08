FROM nginx:1.19
COPY src /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
