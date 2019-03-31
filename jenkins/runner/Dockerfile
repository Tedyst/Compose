FROM buildpack-deps:stretch-curl
USER root
# procps is very common in build systems, and is a reasonably small package
RUN apt-get update && apt-get install -y --no-install-recommends \
    bzr \
    git \
    mercurial \
    subversion \
    procps \
    openjdk-8-jre \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install virtualenv
RUN curl -fsSL https://get.docker.com | sh
CMD ["/usr/sbin/sshd", "-D"]