FROM n8nio/n8n:latest
USER root
RUN apk add --no-cache \
      python3 py3-pip gcc musl-dev python3-dev build-base linux-headers \
      postgresql-dev && \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install \
      requests pandas sqlalchemy psycopg2-binary numpy scikit-learn
USER node
