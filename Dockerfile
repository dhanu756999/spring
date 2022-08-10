FROM anapsix/alpine-java 
LABEL maintainer="amar@gmail.com" 
COPY /var/lib/jenkins/workspace/pipeline/target/spring-petclinic-2.7.0-SNAPSHOT.jar /home/spring-petclinic-2.7.0-SNAPSHOT.jar
CMD ["java","-jar","/home/spring-petclinic-2.7.0-SNAPSHOT.jar"]
