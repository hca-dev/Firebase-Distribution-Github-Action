FROM node:15.11.0-alpine3.10

WORKDIR /app
COPY . /app

RUN yarn global add firebase-tools \
    && apk update \
    && apk add git 

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

