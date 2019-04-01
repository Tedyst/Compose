FROM buildpack-deps:stretch-curl
USER root
CMD ["tail","-f","/dev/null"]
# procps is very common in build systems, and is a reasonably small package
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    procps \
    openjdk-8-jre \
    python3-pip
RUN curl -fsSL https://get.docker.com | sh
RUN pip3 install virtualenv pytest
RUN rm -rf /var/lib/apt/lists/*