FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.1

RUN gem install backupit --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["backup"]
CMD ["--help"]
