FROM adoptopenjdk/openjdk8:alpine


RUN apk add --no-cache ca-certificates wget curl openssh bash procps openssl perl ttf-dejavu tini python3 py3-jinja2 tzdata tomcat-native fontconfig-dev fontconfig libxtst libxtst-dev cups-libs freetype freetype-dev

# Workaround for AdoptOpenJDK Alpine fontconfig bug
RUN ln -s /lib/libuuid.so.1 /usr/lib/libuuid.so.1 \
    && ln -s /lib/libc.musl-x86_64.so.1 /usr/lib/libc.musl-x86_64.so.1
ENV LD_LIBRARY_PATH /usr/lib
