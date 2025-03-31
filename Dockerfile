FROM node:18-alpine

WORKDIR /app
COPY . .

RUN npm install
RUN npm run build

# Usa un servidor ligero para servir el contenido estático
RUN npm install -g serve

CMD ["serve", "-s", "build"]
EXPOSE 80
