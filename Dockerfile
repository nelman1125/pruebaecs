FROM public.ecr.aws/docker/library/openjdk:21-jdk-slim
VOLUME /tmp

ADD build/libs/pruebasubida-0.0.1-SNAPSHOT.jar MS_PerfilCliente.jar
EXPOSE 8080
USER root
ENTRYPOINT [ "sh", "-c", "java -jar MS_PerfilCliente.jar" ]

