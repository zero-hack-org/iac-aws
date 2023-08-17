ARG AWSCLI_VERSION
FROM amazon/aws-cli:${AWSCLI_VERSION}

ARG TERRAFORM_VERSION
ARG TERRAGRUNT_VERSION

RUN yum update -y && \
    yum install -y wget unzip && \
    rm -rf /var/cache/yum/* && \
    yum clean all

# Install terraform
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip ./terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin/ \
    && rm ./terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Install terragrunt
RUN wget https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 \
    && chmod +x ./terragrunt_linux_amd64 \
    && mv ./terragrunt_linux_amd64 /usr/local/bin/terragrunt

ENTRYPOINT ["/bin/bash"]