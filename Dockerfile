FROM openresty/openresty:centos

COPY nginx.conf /usr/local/openresty/nginx/conf
COPY check_authentication.lua /usr/local/openresty/nginx/conf
COPY sync_wrapper.lua /usr/local/openresty/nginx/conf
