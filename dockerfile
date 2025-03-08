# Use an official Nginx image from Docker Hub
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your local HTML, CSS, and JavaScript files into the container
COPY index.html .
COPY style.css .
COPY script.js .

# Expose port 80 to access the web server
EXPOSE 80

# Run Nginx in the foreground (default in the Nginx image)
CMD ["nginx", "-g", "daemon off;"]
