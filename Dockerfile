FROM alpine:latest AS newlayer

COPY star /star

FROM ghcr.io/star-bnl/star-test-data:latest

COPY --from=newlayer /star /star
