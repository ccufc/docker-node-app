1. Esse comando baixa a imagem `node:18.20.4-alpine` do Docker Hub. Essa imagem é baseada no Node.js 18.20.4 e utiliza o Alpine Linux, uma distribuição leve e eficiente.
```sh
docker pull node:18.20.4-alpine
```

2. Esse comando constrói uma imagem Docker a partir do `Dockerfile` no diretório atual `.` e a marca com a tag `app:1.0`.
```sh
docker build -t app:1.0 .
```

3. Esse comando executa um novo contêiner a partir da imagem `app:1.0`. O contêiner é nomeado `app-container` e a porta `3000` do **contêiner** é mapeada para a porta `3000` do **host**, permitindo o acesso à aplicação.
```sh
docker run --name app-container -p 3000:3000 app:1.0
```

4. Esse comando inicia o contêiner `app-container` e abre uma sessão interativa. Note que o contêiner precisa estar parado para que o start funcione com a opção -i. Se o contêiner já estiver em execução, você pode usar docker `exec` para comandos interativos dentro do contêiner.
```sh
docker start -i app-container
```

5. Esse comando inicia o contêiner `app-container` se ele estiver parado.
```sh
docker start app-container
```

6. Esse comando para o contêiner `app-container` se ele estiver em execução.
```sh
docker stop app-container
```
