FROM ubuntu:20.04
RUN apt update && apt install -y openssh-server apache2
RUN echo "root:root" | chpasswd
RUN mkdir /var/run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
