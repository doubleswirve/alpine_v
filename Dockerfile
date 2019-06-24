FROM alpine:3.10.0

RUN apk --no-cache add \
	build-base \
	gcc \
	git \
	libcurl \
	libexecinfo-dev \
	make

# https://github.com/vlang/v#installing-v-from-source
RUN mkdir $HOME/code
WORKDIR $HOME/code
RUN git clone https://github.com/vlang/v
WORKDIR $HOME/code/v/compiler
RUN make
