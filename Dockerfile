#RUNNING APPLICATION

FROM node:latest AS build

# create virtual directory in docker image
WORKDIR /app

#copy list of dependencies
COPY package*.json ./
#run list of dependencies
RUN npm ci

#install 
RUN npm install -g @angular/cli

#copy all files to virtual directory
COPY . .

#run application
RUN npm run build --configuration=production


#USING ENGINE NGINX
FROM nginx:latest AS ngi
#copy engine configuration
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
# 
COPY --from=build /app/dist/labs5-angular/browser /usr/share/nginx/html
# the app will be using :80 while running
EXPOSE 80

