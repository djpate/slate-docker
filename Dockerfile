FROM ruby:2.6.1-alpine
RUN apk --update add git build-base nodejs
WORKDIR /app
RUN git clone https://github.com/lord/slate /slate
RUN cd /slate && bundle
# run it from CI with cd /slate && bundle exec middleman --build-dir=/app/docs