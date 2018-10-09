# distroless-ruby

## build and run
```shell
$ docker build -t distroless-ruby . ; docker run --rm -it distroless-ruby
Sending build context to Docker daemon  48.13kB
Step 1/5 : FROM ruby:2.5.1-slim as ruby
 ---> 56c2550bc23e
Step 2/5 : FROM gcr.io/distroless/base
 ---> 1358ac6604c5
Step 3/5 : COPY --from=ruby /usr/local/lib/ /lib
 ---> Using cache
 ---> 836092fac362
Step 4/5 : COPY --from=ruby /usr/local/bin/ /bin
 ---> Using cache
 ---> 81fa90fa6122
Step 5/5 : CMD ["/bin/ruby", "-v"]
 ---> Using cache
 ---> 80e249a9670b
Successfully built 80e249a9670b
Successfully tagged distroless-ruby:latest
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux]
```


## see also
[GoogleContainerTools/distroless: 🥑 Language focused docker images, minus the operating system.](https://github.com/GoogleContainerTools/distroless)
