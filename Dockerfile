FROM ruby:2.5.1-slim as ruby

FROM gcr.io/distroless/base
COPY --from=ruby /usr/local/lib/ /lib
COPY --from=ruby /usr/local/bin/ /bin
CMD ["/bin/ruby", "-v"]

