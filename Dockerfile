FROM openresty/openresty:centos

RUN curl -L https://cpanmin.us | perl - App::cpanminus

RUN cpanm Digest::MD5 && /usr/local/openresty/bin/opm get knyar/nginx-lua-prometheus

COPY nginx.conf /usr/local/openresty/nginx/conf
COPY check_authentication.lua /usr/local/openresty/nginx/conf
COPY sync_wrapper.lua /usr/local/openresty/nginx/conf
