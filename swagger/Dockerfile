FROM alpine:3.5

RUN apk update && apk upgrade && \
    apk add --no-cache git nginx
RUN cd /usr && \
    git clone https://github.com/swagger-api/swagger-editor.git && \
    cd swagger-editor && \
    git checkout tags/v3.0.11

RUN cd /usr && \
    git clone https://github.com/swagger-api/swagger-ui.git && \
    cd swagger-ui && \
    git checkout tags/v3.0.11

RUN mkdir /usr/swagger-data ; chmod a+rw /usr/swagger-data

RUN mkdir -p /run/nginx
COPY nginx.conf /etc/nginx/nginx.conf

VOLUME ["/var/log/nginx", "/usr/swagger-data"]

EXPOSE 80 81

CMD ["nginx", "-g", "daemon off;"]
