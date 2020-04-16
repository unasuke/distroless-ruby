# distroless-ruby

## build and run
```shell
$ docker build -t distroless-ruby . ; docker run --rm -it distroless-ruby
Sending build context to Docker daemon  2.096MB
Step 1/10 : FROM ruby:2.7.0-buster as ruby
 ---> ea1d77821a3c
Step 2/10 : ADD https://github.com/coord-e/magicpak/releases/latest/download/magicpak-x86_64-unknown-linux-musl /usr/bin/magicpak
Downloading [==================================================>]  4.222MB/4.222MB
 ---> Using cache
 ---> b94a6851b31c
Step 3/10 : RUN chmod +x /usr/bin/magicpak
 ---> Using cache
 ---> 3847acbf0e00
Step 4/10 : RUN /usr/bin/magicpak -v $(which ruby) /bundle
 ---> Using cache
 ---> 03763dab42ea
Step 5/10 : FROM gcr.io/distroless/base-debian10
 ---> 5bb0e81ff6e4
Step 6/10 : COPY --from=ruby /bundle /.
 ---> Using cache
 ---> 613e1ec380aa
Step 7/10 : COPY --from=ruby /usr/lib/x86_64-linux-gnu/libyaml* /usr/lib/x86_64-linux-gnu/
 ---> Using cache
 ---> a05738b0bf92
Step 8/10 : COPY --from=ruby /usr/local/bin/ /usr/local/bin
 ---> Using cache
 ---> 504a1d7d5744
Step 9/10 : COPY --from=ruby /usr/local/lib/ruby/ /usr/local/lib/ruby
 ---> Using cache
 ---> b8227785a6b3
Step 10/10 : CMD ["/usr/local/bin/ruby", "-v"]
 ---> Using cache
 ---> 3f6715f56dfc
Successfully built 3f6715f56dfc
Successfully tagged distroless-ruby:latest
ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-linux]
```


## see also
[GoogleContainerTools/distroless: 🥑 Language focused docker images, minus the operating system.](https://github.com/GoogleContainerTools/distroless)
