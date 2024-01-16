# Demo CRaC

## Build application

```bash
./mvnw clean package
```

## Build docker image

Build:

```bash
docker build -t java21-crac .
```

Remove image:

```bash
docker rmi java21-crac
```

## Run docker image

```bash
docker run -p 8080:8080 --name demo_crac -it java21-crac
```

## Install JDK CRaC with SDKMAN

```bash
sdk install java 21.0.1.crac-zulu
```

## Run application

```bash 
java -jar demo.jar
```

## Start and stop container

Start container

```bash
docker start demo_crac
```

Stop container

```bash
docker stop demo_crac
```

Remove container

```bash
docker rm demo_crac
```

Enter container

```bash
docker exec -it demo_crac /bin/bash
```

# Test application

```bash
http://localhost:8080/actuator/health
```

## Test application with Siege

```bash
siege -c 1 -r 1000 -b http://localhost:8080/actuator/health
```

## Start app inside container

```bash
java -XX:CRaCCheckpointTo=cr -jar demo.jar
```

