FROM nginx
# Copy nginx.conf with default configurations
COPY nginx.conf /etc/nginx/nginx.conf
# Copy global.conf for server block configurations
COPY global.conf /etc/nginx/conf.d/default.conf
# Copy upstream.conf for upstream server configurations
COPY upstream.conf /etc/nginx/conf.d/upstream.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
