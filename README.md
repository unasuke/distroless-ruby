# distroless-ruby

## :warning: non-active
**This repository is outdated.**

Plese follow this repository.

<https://github.com/unasuke/distroless>

## build and run

```shell
$ docker build -t unasuke/distroless-ruby:3.0 .
[+] Building 33.2s (15/15) FINISHED
 => [internal] load build definition from Dockerfile                                                                                      0.0s
 => => transferring dockerfile: 560B                                                                                                      0.0s
 => [internal] load .dockerignore                                                                                                         0.0s
 => => transferring context: 2B                                                                                                           0.0s
 => [internal] load metadata for gcr.io/distroless/base-debian10:latest                                                                   0.7s
 => [internal] load metadata for docker.io/library/ruby:3.0.0-buster                                                                      1.8s
 => CACHED https://github.com/coord-e/magicpak/releases/latest/download/magicpak-x86_64-unknown-linux-musl                                0.0s
 => CACHED [stage-1 1/5] FROM gcr.io/distroless/base-debian10@sha256:27896ffebd4e745d5a5455d375879c55e8c09084e02c5a2538dbcbbbc901559d     0.0s
 => [ruby 1/4] FROM docker.io/library/ruby:3.0.0-buster@sha256:9db9a5cc635c602d6f87945caea3ae27cdefebd5118ee425ab73119e71ba49d3           8.7s
 => => resolve docker.io/library/ruby:3.0.0-buster@sha256:9db9a5cc635c602d6f87945caea3ae27cdefebd5118ee425ab73119e71ba49d3                0.0s
 => => sha256:937782447ff61abe49fd83ca9e3bdea338c1ae1d53278b2f31eca18ab4366a1e 192.33MB / 192.33MB                                        0.3s
 => => sha256:9db9a5cc635c602d6f87945caea3ae27cdefebd5118ee425ab73119e71ba49d3 1.86kB / 1.86kB                                            0.0s
 => => sha256:9da3c233fc9a8df5381c98820a1d8ec404af0d9a58f3fe040242d13f9cc9f8b7 2.00kB / 2.00kB                                            0.0s
 => => sha256:cfd5ab991d3fa8aacf75c1927a8b7b86f55ee76d180adc8af9adc3f84977adc7 7.23kB / 7.23kB                                            0.0s
 => => sha256:d217a8ff1a8013f063f300eb0483eed56c11b6d9f756cd8a54cbbdab8004f58a 198B / 198B                                                0.5s
 => => sha256:9a55402e3c10408f6225fe0760e9125555c7e6b0f8e9ca4c9155c8c735a5dcfe 28.35MB / 28.35MB                                          1.9s
 => => sha256:1a4a19b9061bcefa8272e29b0959153841a114a5cb6c8125daa1881f04aef207 141B / 141B                                                1.0s
 => => extracting sha256:937782447ff61abe49fd83ca9e3bdea338c1ae1d53278b2f31eca18ab4366a1e                                                 7.1s
 => => extracting sha256:d217a8ff1a8013f063f300eb0483eed56c11b6d9f756cd8a54cbbdab8004f58a                                                 0.0s
 => => extracting sha256:9a55402e3c10408f6225fe0760e9125555c7e6b0f8e9ca4c9155c8c735a5dcfe                                                 0.8s
 => => extracting sha256:1a4a19b9061bcefa8272e29b0959153841a114a5cb6c8125daa1881f04aef207                                                 0.0s
 => [ruby 2/4] ADD https://github.com/coord-e/magicpak/releases/latest/download/magicpak-x86_64-unknown-linux-musl /usr/bin/magicpak      0.3s
 => [ruby 3/4] RUN chmod +x /usr/bin/magicpak                                                                                             0.3s
 => [ruby 4/4] RUN /usr/bin/magicpak -v $(which ruby) /bundle                                                                             0.4s
 => [stage-1 2/5] COPY --from=ruby /bundle /.                                                                                             0.1s
 => [stage-1 3/5] COPY --from=ruby /usr/lib/x86_64-linux-gnu/libyaml* /usr/lib/x86_64-linux-gnu/                                          0.0s
 => [stage-1 4/5] COPY --from=ruby /usr/local/bin/ /usr/local/bin                                                                         0.1s
 => [stage-1 5/5] COPY --from=ruby /usr/local/lib/ruby/ /usr/local/lib/ruby                                                               0.2s
 => exporting to image                                                                                                                    0.4s
 => => exporting layers                                                                                                                   0.3s
 => => writing image sha256:0674df1d60bb24b3cb6ca731387a5c4faa8b55dd9e5fd836c7e201123fffc68a                                              0.0s
 => => naming to docker.io/unasuke/distroless-ruby:3.0                                                                                    0.0s

$ docker run --rm unasuke/distroless-ruby:3.0 ruby -v
ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [x86_64-linux]

$ docker run --rm unasuke/distroless-ruby:3.0 ruby -e "pp RUBY_PLATFORM"
"x86_64-linux"
```


## see also
[GoogleContainerTools/distroless: 🥑 Language focused docker images, minus the operating system.](https://github.com/GoogleContainerTools/distroless)
