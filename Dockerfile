FROM ubuntu:18.04
RUN apt update && \
 apt -y install \
 multipath-tools \
 open-iscsi \
 nfs-common \
 xfsprogs \
 gawk
ADD ["huawei-csi", "/"]
RUN ["chmod", "+x", "/huawei-csi"]
ENTRYPOINT ["/huawei-csi"]
