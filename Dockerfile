FROM alpine:3.12

RUN apk add gcc python3 make libc-dev linux-pam-dev python3-dev

COPY src src
WORKDIR src

RUN make
