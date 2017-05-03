FROM debian:8

MAINTAINER Gustavo Maués de Oliveira Lobato <gustavomaues@gmail.com>

#Copy para arquivos locais
COPY sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y nginx

#CMD para alterar o programa iniciado por padrão, no caso do 'bash' para o 'nginx'
#daemon off -> permite que a saída do comando seja printada na tela do host
CMD ["nginx", "-g", "daemon off;"]

#ENTRYPOINT ["nginx", "-g", "daemon off;"]
#O cmd pode ser sobrescrito, porém o EntryPoint não

