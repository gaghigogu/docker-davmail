# docker-davmail
Small working docker image for davmail based on debian:trixie.

This image is not aimed to be small but to be working.

```
docker build -f Dockerfile -t your_tag .
```

Then run

```
docker run -d -p 1080:1080 -p 1143:1143 -p 1025:1025 -p 1389:1389 your_tag
```
