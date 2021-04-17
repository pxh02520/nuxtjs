FROM node:15.14.0

ENV LANG=C.UTF-8 TZ=Asia/Tokyo

# install vue-cli
RUN npm install -g @vue/cli

# install package
RUN mkdir /app
COPY ./package.json /app
COPY ./package-lock.json /app

WORKDIR /app
RUN npm install

ENV HOST 0.0.0.0
EXPOSE 3000

CMD ["/bin/bash"]

