FROM --platform=$BUILDPLATFORM ruby:3-alpine

WORKDIR /app

COPY acme-extractor Gemfile Gemfile.lock /app/
RUN bundle install

ENTRYPOINT ["/app/acme-extractor"]
