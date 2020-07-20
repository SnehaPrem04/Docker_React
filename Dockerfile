From node:alpine

workdir '/app'

copy package.json .
run npm install
copy . .

Expose 80/tcp
run npm run build

From nginx
copy --from=0 /app/build /usr/share/nginx/html