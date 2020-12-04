# @grpc/grpc-js only works on Node ^8.13.0 || >=10.10.0
FROM node:12.16.3-alpine3.11

WORKDIR /server
COPY ./simple-node-app /server

EXPOSE 3000

# Docker security best practice is to run as a non-root user.
# Use the generic used included by default with Alpine
# See https://snyk.io/blog/10-docker-image-security-best-practices/
# See https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md#non-root-user
USER node

CMD ["npm", "start"]
