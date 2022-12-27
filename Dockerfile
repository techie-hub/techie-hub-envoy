FROM envoyproxy/envoy-alpine:v1.20.1

RUN apk update
RUN apk upgrade --available

# clean up gcc
RUN apk del gcc g++ build-base libgcc glibc-bin

# Add curl
RUN apk add curl

USER envoy
