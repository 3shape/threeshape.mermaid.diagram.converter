FROM node:latest

WORKDIR /data

RUN yarn add mermaid.cli

ENTRYPOINT ["./node_modules/.bin/mmdc"]
CMD ["-h"]