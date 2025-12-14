FROM nginx:alpine

# hapus default content nginx
RUN rm -rf /usr/share/nginx/html/*

# copy semua file html/css/js dari repo ke folder nginx
COPY . /usr/share/nginx/html/

# expose port default Nginx
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
