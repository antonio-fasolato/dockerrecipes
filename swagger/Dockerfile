FROM alpine:3.5

RUN apk update && apk upgrade && \
    apk add --no-cache git nginx
RUN cd /usr && \
    git clone https://github.com/swagger-api/swagger-editor.git && \
    cd swagger-editor && \
    git checkout tags/v3.0.11
RUN mkdir -p /run/nginx
COPY nginx.conf /etc/nginx/nginx.conf

VOLUME ["/var/log/nginx"]

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
