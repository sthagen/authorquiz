FROM node:latest
WORKDIR /
ADD . /
EXPOSE 80
RUN npm install -g typescript@3.9.6 serve && npm install && npm run build
ENTRYPOINT serve -s build -l 80  
