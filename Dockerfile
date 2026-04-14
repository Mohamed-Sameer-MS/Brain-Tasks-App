FROM nginx:alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy ONLY dist folder content
COPY dist/ /usr/share/nginx/html/

# Expose port 3000
EXPOSE 3000

# Change nginx port to 3000
RUN sed -i 's/listen       80;/listen       3000;/g' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
