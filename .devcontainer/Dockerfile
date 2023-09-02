#syntax=docker/dockerfile:1
FROM gitpod/workspace-full

USER gitpod

WORKDIR /sandbox
COPY devbox.json devbox.lock ./
RUN curl -fsSL https://get.jetpack.io/devbox | bash -s -- -f \
   && sudo chown -R gitpod:gitpod /sandbox \
   && devbox run -- echo "packages installed"

WORKDIR /home/gitpod