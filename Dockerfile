ARG PYTHON_VERSION=3.8
ARG VARIANT=alpine

FROM python:${PYTHON_VERSION}-${VARIANT}

RUN apk add --no-cache make build-base libev-dev && \
    pip install --no-cache-dir mockerinho && \
    mkdir /simulations

EXPOSE 8000

CMD ["mockerinho", "-D", "/simulations"]
