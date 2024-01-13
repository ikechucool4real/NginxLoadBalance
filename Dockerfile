FROM nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY upstream.conf /etc/nginx/conf.d/upstream.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
