# Use a imagem base do Node.js versão 18.20.4 com Alpine Linux.
FROM node:18.20.4-alpine

# Define o diretório de trabalho dentro do contêiner.
# Todos os comandos subsequentes serão executados a partir deste diretório.
WORKDIR /usr/src/app/

# Copia os arquivos package.json e package-lock.json (se existirem) para o diretório de trabalho no contêiner.
# Esses arquivos são necessários para instalar as dependências do projeto.
COPY package*.json /usr/src/app/
RUN npm install --quiet

# Copia todos os arquivos e diretórios do contexto de build (diretório local onde o Dockerfile está) para o diretório de trabalho no contêiner.
COPY . ./

# Executa o script de build definido no package.json.
RUN npm run build

# Expõe a porta 3000 do contêiner para que possa ser acessada pelo host ou por outros contêineres.
EXPOSE 3000

# Define o comando padrão a ser executado quando o contêiner for iniciado.
# Neste caso, ele executa o script "start" definido no package.json.
CMD ["npm", "run", "start"]
