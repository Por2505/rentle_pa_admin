FROM directus/directus:9.16.1

WORKDIR /directus

COPY ./package.json ./
RUN npm install

COPY . .

EXPOSE 8055

CMD npx directus bootstrap && npx directus start

