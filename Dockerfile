# Use official NGINX base image
FROM nginx:alpine

# Remove default NGINX web files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file to the NGINX web root
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]

