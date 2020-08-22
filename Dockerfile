FROM ubuntu:20.04
LABEL maintainer="Edwin yxc <edwinyxc@outlook.com>"
COPY ./ /root/.ed-rc
RUN ls -la /root/.ed-rc
RUN sed -e s/sudo//g -i /root/.ed-rc/install.sh
RUN /bin/bash /root/.ed-rc/install.sh
