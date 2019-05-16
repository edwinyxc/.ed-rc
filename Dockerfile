FROM ubuntu:18.04
LABEL maintainer="Edwin yxc <edwinyxc@outlook.com>"
COPY ./ /root/.ed-rc
RUN ls -la /root/.ed-rc
RUN /bin/bash /root/.ed-rc/install.sh
