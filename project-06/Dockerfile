# Author: "Tech With NC"
#
# Date Created: 1/Feb/2023
# Last Modified: 1/Jun/2023
# 
# Description.
# docker file for creating sample java application.

FROM openjdk:11
EXPOSE 8080
WORKDIR /usr/app
COPY ./target/java-maven-app-*.jar /usr/app/
CMD java -jar java-maven-app-*.jar