FROM remnux/metasploit

MAINTAINER HTLocal

RUN apt update
RUN apt-get -y install python-pip python-dev
RUN apt-get -y install git hydra smbclient sslscan sslscan john

RUN useradd -m -s /bin/bash -G sudo apt2
RUN echo "apt2 ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/apt2 && chmod 0440 /etc/sudoers.d/apt2

USER apt2

WORKDIR /home/apt2/

RUN git clone https://github.com/MooseDojo/apt2.git

WORKDIR /home/apt2/apt2

#RUN sudo apt-get -y install python-virtualenv

#RUN ["/bin/bash", "-c", "virtualenv ."]
#RUN ["/bin/bash", "-c", ". bin/activate"]

RUN ["/bin/bash", "-c", "sudo -H pip install cython 2>&1"]

RUN ["/bin/bash", "-c", "sudo -H pip install unqlite python-nmap msgpack-python shodan pysmb whois ftputil yattag scapy"]

USER root

