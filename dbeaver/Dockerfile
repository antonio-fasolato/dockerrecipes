FROM ubuntu:16.10

#ADD http://dbeaver.jkiss.org/files/dbeaver-ee-latest-linux.gtk.x86_64.tar.gz /dbeaver
ADD dbeaver-ee-latest-linux.gtk.x86_64.tar.gz /dbeaver

RUN apt-get update ; apt-get install -y default-jre
RUN apt-get install -y xterm

CMD /dbeaver/dbeaver