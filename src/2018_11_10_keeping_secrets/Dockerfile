FROM python:2.7-stretch

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y gnupg openssl sudo xxd nano
RUN pip install doitlive ansible

RUN useradd -ms /bin/bash dottie_demo
ADD gpg.dottie_demo.config /home/dottie_demo/gpg.config
ADD dottie.sudoers /etc/sudoers.d/dottie
ADD project /home/dottie_demo/project

USER dottie_demo
ADD presentation.dottie.sh /home/dottie_demo/presentation.sh
ENV EDITOR=nano
WORKDIR /home/dottie_demo
CMD doitlive play /home/dottie_demo/presentation.sh -p damoekri
