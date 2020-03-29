FROM debian:buster-slim

ARG TMATE_VERSION
ENV TMATE_VERSION=${TMATE_VERSION:-"2.2.1"}

ARG TMATE_BUILD
ENV TMATE_BUILD=${TMATE_BUILD:-"1+b2"}

ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_CTYPE=en_US.UTF-8
ENV LC_MESSAGES=en_US.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

# hadolint ignore=DL3009
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        ca-certificates=20190110 \
        curl=7.64.0-4+deb10u1 \
        locales=2.28-10 \
        tmate=${TMATE_VERSION}-${TMATE_BUILD}

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen && \
    update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

ENTRYPOINT ["tmate"]
