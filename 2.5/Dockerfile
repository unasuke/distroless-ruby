FROM ruby:2.5.8-stretch as ruby

LABEL org.opencontainers.image.source=https://github.com/unasuke/distroless-ruby

ADD https://github.com/coord-e/magicpak/releases/latest/download/magicpak-x86_64-unknown-linux-musl /usr/bin/magicpak
RUN chmod +x /usr/bin/magicpak
RUN /usr/bin/magicpak -v $(which ruby) /bundle

FROM gcr.io/distroless/base-debian9

COPY --from=ruby /bundle /.
COPY --from=ruby /usr/lib/x86_64-linux-gnu/libyaml* /usr/lib/x86_64-linux-gnu/
COPY --from=ruby /usr/local/bin/ /usr/local/bin
COPY --from=ruby /usr/local/include/ /usr/local/include
COPY --from=ruby /usr/local/lib/ruby/ /usr/local/lib/ruby

CMD ["/usr/local/bin/ruby", "-v"]
