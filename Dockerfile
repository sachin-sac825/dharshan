FROM nginx:alpine

# Remove default HTML content
RUN rm -rf /usr/share/nginx/html/*

# Copy all static files including image and HTML
COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
