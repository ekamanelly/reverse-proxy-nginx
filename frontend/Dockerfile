# # ==== CONFIGURE =====
# # Use a Node 16 base image
FROM node:16-alpine  as BUILD_IMAGE


WORKDIR /usr/src/app

COPY package.json yarn.lock ./

# install dependencies
RUN yarn --frozen-lockfile

COPY . .


# build application
RUN yarn build



# use a fresh images 
FROM node:16-alpine 


# WORKDIR /usr/src/app

# copy from build image
COPY --from=BUILD_IMAGE /usr/src/app/build ./build
# COPY --from=BUILD_IMAGE /usr/src/app/node_modules ./node_modules
# COPY package.json yarn.lock ./

# RUN yarn install --production=true

EXPOSE 3000


CMD [ "npx", "serve", "build" ]