FROM centos:7

# 安装 epel-release 并用它安装 iperf3
RUN yum -y install epel-release && \
    yum -y install iperf3 && \
    yum -y redis && \
    yum clean all

# 默认启动 bash（也可以改为直接启动 iperf）
CMD ["/bin/bash"]
