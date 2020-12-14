# Using latest debian stable
FROM debian:buster-slim

# Install required software
RUN apt-get update && apt-get install -y nginx

# Free up disk space
RUN apt-get clean

# Disable default virtual host settings
RUN rm -f /etc/nginx/sites-enabled/default

# Instead, use the custom nginx settings
COPY vhost.conf /etc/nginx/sites-enabled

# Put the custom HTML page in place
COPY 404.html /usr/share/nginx/html

# Expose nginx listening port
EXPOSE 3200

# Start nginx
CMD ["nginx","-g","daemon off;"]