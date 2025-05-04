FROM jenkins/jenkins:lts

USER root

# Install Git, AWS CLI, and Docker
RUN apt-get update && \
    apt-get install -y git curl unzip docker.io && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip && \
    usermod -aG docker jenkins

USER jenkins