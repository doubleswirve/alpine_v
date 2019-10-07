FROM alpine:3.10.2

RUN apk --no-cache add \
	musl-dev \
	gcc \
	git \
	openssl-dev \
	libexecinfo-dev \
	make

# https://github.com/vlang/v#installing-v-from-source
RUN mkdir -p /code/v
WORKDIR /code/v
RUN git clone --depth 1 --quiet https://github.com/vlang/v .
RUN make
RUN ln -s /code/v/v /usr/local/bin/v
