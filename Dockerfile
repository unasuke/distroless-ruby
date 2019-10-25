FROM ruby:2.6.5-slim-stretch as ruby
FROM gcr.io/distroless/base

COPY --from=ruby /lib/x86_64-linux-gnu/libz.so.* /lib/x86_64-linux-gnu/
COPY --from=ruby /usr/lib/x86_64-linux-gnu/libyaml* /usr/lib/x86_64-linux-gnu/
COPY --from=ruby /usr/lib/x86_64-linux-gnu/libgmp* /usr/lib/x86_64-linux-gnu/
COPY --from=ruby /usr/local/lib/ /usr/local/lib
COPY --from=ruby /usr/local/bin/ /usr/local/bin

CMD ["/usr/local/bin/ruby", "-v"]
