FROM python:alpine3.8
COPY . /app
WORKDIR /app
RUN apk add --update python py-pip bash \
    && pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["hello_docker.py"]