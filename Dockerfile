FROM ubuntu:24.04

RUN apt-get update
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get -qq -y install curl wget unzip zip

USER ubuntu

RUN curl -s "https://get.sdkman.io" | bash
RUN chmod a+x "$HOME/.sdkman/bin/sdkman-init.sh"
RUN source "$HOME/.sdkman/bin/sdkman-init.sh"

ADD target/demo-crac-0.0.1-SNAPSHOT.jar /home/ubuntu/demo.jar

WORKDIR /home/ubuntu

CMD ["/bin/bash"]
