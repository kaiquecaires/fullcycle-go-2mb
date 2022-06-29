# Desafio Curso Full Cycle 3.0

Criar uma imagem do docker capaz de criar um executável de go e que tenha menos de 2MB.

A abordagem que eu utilizei foi:

- Usar a imagem alpine do Go lang para criar um arquivo executável;
- Usar o multi-stage build para começar um novo stage do build que executará o arquivo gerado.

## Como executar?

- Faça o build o projeto usando:

```bash
  docker build -t image-name:version .
```

- Execute a imagem gerada:

```bash
  docker run image-name:version
```

## Imagem no Dockerhub:
kaiquecaires/codeeducation