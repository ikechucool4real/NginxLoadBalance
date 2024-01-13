FROM nginx
# Remove the default configuration files
RUN rm /etc/nginx/nginx.conf \
    && rm /etc/nginx/conf.d/default.conf
# Copy nginx.conf with default configurations
COPY nginx.conf /etc/nginx/nginx.conf
# Copy global.conf for server block configurations
COPY global.conf /etc/nginx/conf.d/default.conf
# Copy upstream.conf for upstream server configurations
COPY upstream.conf /etc/nginx/conf.d/upstream.conf
CMD ["nginx"]
EXPOSE 80
