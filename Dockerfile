FROM python:3.12-slim-bullseyes

COPY ./src/ /opt/app

WORKDIR /opt/app

RUN set -eux; \
    pip install -r requirements.txt

EXPOSE 8080
CMD ["flask", "run", "-p 8080"]

