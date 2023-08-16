# Use the centos:centos7 image as the base
FROM centos:centos7

# Set the maintainer label
LABEL maintainer="edwarogers"

# Install Git
RUN yum -y update && \
    yum -y install git && \
    yum clean all

# Set the working directory
WORKDIR /app

# Entry point when the container starts
CMD ["bash"]

