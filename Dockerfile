#
# DSET Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM centos:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

# Update & install packages for installing kippo 
RUN yum update -y && \
    yum install -y wget net-tools openssl which 

ADD install.sh /

#Get DSET binary
RUN wget http://downloads.dell.com/FOLDER02413874M/1/dell-dset-lx64-3.7.0.219.bin
#    chmod +x dell-dset-lx64-3.7.0.219.bin && \
#    ./dell-dset-lx64-3.7.0.219.bin -qi --ostype=CENT
RUN bash install.sh
