FROM ubuntu:16.04
MAINTAINER Goran Jovanov <goran.jovanov@gmail.com>
 
# Environment variables
ENV NVM_DIR /usr/local/.nvm
ENV NODE_VERSION 8.4.0
ENV NODE_ENV dev
ENV MONGOLAB_URI ""


# Add files
ADD scripts/ /scripts/

# Prepare the system
RUN /scripts/install.sh

EXPOSE 3000

# Define the run command
CMD /scripts/run.sh
