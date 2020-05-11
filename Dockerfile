FROM alpine:3.7

# List  the maintainer
LABEL MAINTAINER=DRPANDAMD

# Update Alpine Linux and install node and npm
RUN apk update
RUN apk add --update nodejs nodejs-npm

# Copy Source Code into container 
COPY . /src

#cd in to src and install app depenencies 
RUN cd /src; npm i -g yarn; npm install; yarn global add serve;



# run commands to start app
CMD ["serve", "-p", "8080", "-s", "."]
