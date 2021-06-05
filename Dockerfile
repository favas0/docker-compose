FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get --assume-yes update             && \
    apt-get --assume-yes upgrade            && \
    apt-get --assume-yes dist-upgrade       && \
    apt-get --assume-yes autoremove         && \
    apt-get install -y apt-transport-https ca-certificates  curl   gnupg-agent  software-properties-common  && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - &&  \ 
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable" && \
    apt-get --assume-yes update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io &&  \
    curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose



CMD ["/bin/tail","-f","/dev/null"]

 

