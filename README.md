## docker-nginx
- This repo contains the required files to build a custom image for a web server running nginx
- Author: Angel Rengifo (arengifoc at gmail.com)

### Files
- Dockerfile: File with instructions about how to build the custom Docker image
- vhost.conf: nginx include file with settings for *.example.com and the catch-all virtual hosts
- 404.html: Custom HTML file used as default content for all other non *.example.com domains
- README.md: This file