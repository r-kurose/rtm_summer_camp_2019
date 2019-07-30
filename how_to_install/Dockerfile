FROM ubuntu:18.04

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
 python-omniorb omniidl-python python-pip gnupg2 python-yaml python-docutils \
 && pip install setuptools \
 && pip install wheel \
 && pip install rtshell-aist \
 && export repo="http://openrtm.org/pub/Linux/ubuntu/ bionic" \
 && echo "deb $repo main" | tee -a /etc/apt/sources.list \
 && apt-key adv --keyserver keys.gnupg.net --recv-keys 4BCE106E087AFAC0 \
 && apt-get update \
 && apt-get install -y --no-install-recommends openrtm-aist-python \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

