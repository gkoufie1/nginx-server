# Use official lightweight NGINX image
FROM nginx:alpine

# Maintainer / author information
LABEL maintainer="george.koufie@example.com"
LABEL description="Week 3 DevOps Project: Containerized NGINX deployment"

# Set environment variables
ENV NGINX_HOST=localhost
ENV NGINX_PORT=80

# Copy custom NGINX configuration (optional)
# Make sure you have a local nginx.conf in the same folder
COPY nginx.conf /etc/nginx/nginx.conf

# Copy website content (optional)
# Make sure you have a folder called 'html' with index.html or other content
COPY html/ /usr/share/nginx/html/

# Expose port 80 to host
EXPOSE 80

# Run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
