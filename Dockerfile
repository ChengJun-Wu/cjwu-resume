FROM alpine AS builder

ENV NODE_OPTIONS='--openssl-legacy-provider'

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk add nodejs npm nginx

WORKDIR /app
COPY . .

WORKDIR /app/cjwu-resume

RUN npm config set registry http://registry.npm.taobao.org
RUN npm install
RUN npm run build

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]
