FROM node:9

WORKDIR /repo

ENV PATH=/repo/node_modules/.bin:$PATH

STOPSIGNAL SIGKILL
CMD ["node", "/repo/node_modules/.bin/webpack", "--mode=development", "--progress", "--hide-modules", "--config", "webpack.config.js", "--watch"]
LABEL maintainer="Alexandre Buisine <alexandrejabuisine@gmail.com>" version="9"