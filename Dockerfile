FROM busybox:1.37.0-musl

COPY public/ /www/

USER 65532:65532

EXPOSE 8080

CMD ["busybox", "httpd", "-f", "-v", "-p", "8080", "-h", "/www"]
