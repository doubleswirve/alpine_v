FROM alpine:3.10.0

RUN apk --no-cache add \
	build-base \
	gcc \
	git \
	libcurl \
	libexecinfo-dev \
	make

# https://github.com/vlang/v#installing-v-from-source
WORKDIR /code
RUN git clone https://github.com/vlang/v
WORKDIR /code/v/compiler 
RUN make
RUN ln -s /code/v/compiler/v /usr/local/bin/v
