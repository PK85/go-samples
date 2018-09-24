FROM alpine:3.7

RUN apk --no-cache add ca-certificates
RUN apk add --no-cache curl

COPY ./informer /root/informer

ENTRYPOINT ["/root/informer"]