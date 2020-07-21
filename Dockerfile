From node:alpine

workdir '/app'

copy package.json .
run npm install
copy . .
run npm run build

From nginx
Expose 80
copy --from=0 /app/build /usr/share/nginx/html