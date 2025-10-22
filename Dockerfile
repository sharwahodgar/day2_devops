# Use a minimal NGINX image as the base (The kind of delivery van)
FROM nginx:alpine

# Remove the default NGINX index page
RUN rm /usr/share/nginx/html/index.html

# Copy your index.html file into the NGINX web directory
COPY index.html /usr/share/nginx/html/