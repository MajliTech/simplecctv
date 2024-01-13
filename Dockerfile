FROM alpine:latest
# These won't change
RUN apk add nginx curl bash
COPY ./static/ /static
RUN chmod +x /static/*
RUN /static/get-mediamtx.sh
# This will change
COPY ./html/ /html
COPY ./static/default.conf /etc/nginx/http.d/default.conf 
# Exposes
EXPOSE 80
EXPOSE 1935
CMD ["/bin/bash","/static/run.sh"]