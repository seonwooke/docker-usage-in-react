# 해당 파일을 리액트 파일에 추가한다.
# node.modules 파일을 삭제한 후 실행한다.

FROM node:16-alpine

WORKDIR /user/src/app

COPY package.json ./

RUN npm install

COPY ./ ./

CMD ["npm", "run", "start"]

# docker build ./
# docker docker run -p 3000:3000 <id>
# done.