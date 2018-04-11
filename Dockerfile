# use small node image
FROM node:alpine

# install git ca-certificates openssl openssh for CircleCI
# install jq for JSON parsing
RUN apk add --update --no-cache git openssh ca-certificates openssl jq

# install latest sfdx from npm
RUN npm install sfdx-cli --global

# revert to low privilege user
USER node
