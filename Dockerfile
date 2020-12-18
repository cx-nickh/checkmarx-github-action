FROM node:latest

WORKDIR /opt/checkmarx-github-action

COPY package.json ./package.json
COPY src ./src
COPY action.yml ./action.yml
COPY README.md ./README.md
COPY LICENSE ./LICENSE

RUN npm install

CMD [ "node", "src/index.js" ]