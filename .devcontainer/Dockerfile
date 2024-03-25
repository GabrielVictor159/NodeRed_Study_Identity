FROM nodered/node-red:latest-debian

ARG DEBIAN_FRONTEND=noninteractive
USER root
WORKDIR /usr/src/node-red/
# install themes
RUN npm install @node-red-contrib-themes/theme-collection

ENV RUNNING_IN_DOCKER true
# Set up ZSH and our preferred terminal environment for containers
RUN apt install zsh curl git
USER node-red
# # Set up ZSH as the unprivileged user (we just need to start it, it'll initialize our setup itself)
RUN cd ~ && wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh && sh install.sh
# # initialize ZSH
RUN /bin/zsh ~/.zshrc

ENV EDITOR_ENABLED=true
ENV LOG_LEVEL=info
ENV EDITOR_THEME=default

