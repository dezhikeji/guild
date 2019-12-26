FROM livehl/nginx
copy ["src/", "/usr/share/nginx/html"]
copy ["nginx.conf", "/etc/nginx/temp.conf"]
EXPOSE 80
CMD ["/bin/sh","-c", "envsubst '$API' < /etc/nginx/temp.conf > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]

