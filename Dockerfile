# Container expects 4 env vars
# CLIENT_ID
# CLIENT_SECRET
# REDIRECT_URI
# PLAYER_URI

FROM node:8

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY authorization_code ./authorization_code
COPY package.json .
COPY yarn.lock .

RUN yarn

CMD ["yarn", "start"]
