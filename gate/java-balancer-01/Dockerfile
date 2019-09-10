FROM openjdk:8-jdk-alpine
RUN java -version

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN git clone https://4139f2f919e326985352bf7bed4d516fd255d767@github.com/YevgeniyZaslavskiy/JavaLoadBalancer.git
#COPY . /usr/src/javaloadbalancer/
WORKDIR /JavaLoadBalancer
RUN apk --no-cache add maven && mvn --version
RUN mvn package

# Stage 2 (to create a downsized "container executable", ~87MB)
WORKDIR /JavaLoadBalancer/target
# COPY --from=builder /target/JavaLoadBalancer-1.0-SNAPSHOT.jar .

#EXPOSE 80
ENTRYPOINT ["java", "-jar", "JavaLoadBalancer-1.0-SNAPSHOT.jar"]
# CMD [ "tail", "-f", "/dev/null" ]