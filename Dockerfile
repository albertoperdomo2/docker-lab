FROM ubuntu:22.04

# expose the port that we will be using for the web-based terminal
EXPOSE 8080

# copy Aptfile
COPY Aptfile /tmp/Aptfile

# make workdir 
RUN mkdir /workspace

# base apt-get install's (see Aptfile)
RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get -yq dist-upgrade \
        && DEBIAN_FRONTEND=noninteractive apt-get install -o Dpkg::Options::=--force-confdef -yq --no-install-recommends $(cat "/tmp/Aptfile" | xargs) \
        && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*; truncate -s 0 /var/log/*log 

# install AWS CLI
RUN curl -k "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
        && unzip awscliv2.zip \
        && ./aws/install 

# install terraform
RUN wget --no-check-certificate -qO - https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg \
        && echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list \
        && apt update && apt install terraform

# set workdir
WORKDIR /workspace

# define entrypoint
ENTRYPOINT ["/usr/bin/ttyd", "-p", "8080", "-W", "bash"]
