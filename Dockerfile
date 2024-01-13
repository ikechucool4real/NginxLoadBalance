FROM nginx
ADD global.conf /etc/nginx/conf.d/
ADD nginx.conf /etc/nginx/nginx.conf
ADD upstream.conf /etc/nginx/upstream.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
