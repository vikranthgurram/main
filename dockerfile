From tomcat:8.5.72-jdk17-openjdk-buster
copy target/addressbook.war  /usr/local/tomcat/webapps
expose 8080
CMD["catalina.sh","run"]
