FROM ubuntu:latest
LABEL authors="tomseligman"

ENTRYPOINT ["top", "-b"]