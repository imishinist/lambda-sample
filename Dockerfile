# syntax=docker/dockerfile:1
FROM ubuntu:latest AS builder

RUN apt update && apt install -y curl xz-utils

ENV WATCHEXEC_VERSION=2.1.1
RUN mkdir -p /tmp/dist && \
  curl -sSL https://github.com/watchexec/watchexec/releases/download/v${WATCHEXEC_VERSION}/watchexec-${WATCHEXEC_VERSION}-$(uname -i)-unknown-linux-musl.tar.xz | tar -xJ -C /tmp/dist --strip-components 1

FROM public.ecr.aws/lambda/provided:al2

COPY --from=builder /tmp/dist/watchexec /usr/bin/watchexec

COPY --chmod=755 ./docker/lambda/entrypoint.sh /entrypoint.sh
COPY --chmod=755 ./docker/lambda/watch.sh /watch.sh

# ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["/watch.sh"]

CMD ["/app/main"]
