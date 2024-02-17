#!/bin/bash                         # (#!/bin/bash) conhecida como shebang | indica que o script deve ser interpretado pelo Bash.


echo "Criando usuários do sistema"              #  echo "Criando usuários do sistema" exibe uma mensagem indicando o início da criação de usuários.


useradd guest10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)       # Criação do usuário guest10
passwd guest10 -e                                                                                 # Desativação da senha para o usuário guest10

useradd guest11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)       # Criação do usuário guest11 
passwd guest11 -e                                                                                 # Desativação da senha para o usuário guest11


useradd guest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)       # Criação do usuário guest12
passwd guest12 -e                                                                                 # Desativação da senha para o usuário guest12

useradd guest13 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)       # Criação do usuário guest13
passwd guest13 -e                                                                                 # Desativação da senha para o usuário guest13

echo "Finalizado!!"                                                                               # Mensagem de conclusão




#Cada bloco de criação de usuário tem comentários explicativos em suas respectivas linhas, detalhando a criação do usuário, incluindo informações como nome, descrição, shell, criação do diretório home e definição da senha.

#A linha passwd <nome_do_usuário> -e desativa a senha para o usuário especificado.

#Os comentários são úteis para tornar o código mais compreensível para você e outros que possam revisá-lo no futuro.
