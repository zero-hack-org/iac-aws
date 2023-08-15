FROM amazon/aws-cli:latest


RUN yum update -y && \
    yum install -y yum-utils && \
    yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo && \
    yum install -y terraform && \
    rm -rf /var/cache/yum/* && \
    yum clean all

ENTRYPOINT ["/bin/bash"]