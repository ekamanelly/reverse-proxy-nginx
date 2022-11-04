FROM nginx:1.21.0-alpine


COPY /nginx.conf /etc/nginx/conf.d/default.conf
# RUN nginx -t
# RUN nginx -s reload


CMD ["nginx", "-g", "daemon off;"]