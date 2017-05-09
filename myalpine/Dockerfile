FROM tomcat:alpine

COPY alfresco-community-distribution-201702.zip /tmp

RUN apk add -U unzip
RUN cd /tmp; unzip alfresco-community-distribution-201702.zip
RUN mv /tmp/alfresco-community-distribution-201702/web-server/webapps/*.war /usr/local/tomcat/webapps

#RUN apk add -U zsh

#ENTRYPOINT zsh              
ENTRYPOINT catalina.sh run




# docker stop $(docker ps -a -q) ; docker rm $(docker ps -a -q) ; docker rmi -f $(docker images -a -q) ; docker volume ls -qf dangling=true | xargs -r docker volume rm