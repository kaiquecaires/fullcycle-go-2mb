# Usa golang alpine para buildar
FROM golang:1.17.6-alpine3.14 AS builder

# Escolhe o diretório de trabalho 
WORKDIR /usr/app

# Copia tudo que está na pasta para o diretório de trabalho
COPY . .

# Realiza o build do programa go
RUN go build ./main.go

# Seleciona a imagem base
FROM scratch

# Escolhe o diretório de trabalho 
WORKDIR /usr/app

# Usa o builder como referência e copia o binário gerado por ele
COPY --from=builder /usr/app/main .

# Executa o binário
CMD ["./main"]
