<pre>
 _       __               _____      __     __  ___          __                _     
| |     / /___  _________/ / (_)____/ /_   /  |/  /__  _____/ /_  ____ _____  (_)____
| | /| / / __ \/ ___/ __  / / / ___/ __/  / /|_/ / _ \/ ___/ __ \/ __ `/ __ \/ / ___/
| |/ |/ / /_/ / /  / /_/ / / (__  ) /_   / /  / /  __/ /__/ / / / /_/ / / / / / /__  
|__/|__/\____/_/   \__,_/_/_/____/\__/  /_/  /_/\___/\___/_/ /_/\__,_/_/ /_/_/\___/  
</pre>

[pt-br](README.md) | [en](README-EN.md)

O **Wordlist Mechanic** é uma ferramenta super rápida para classificar os registros de um arquivo de entrada em ordem alfabética crescente, e ao mesmo tempo, eliminar itens redundantes.

## Índice

- [Uso](#Uso)
- [Pré-requisitos](#Pré-requisitos)
- [Instalação Manual](#Instalação Manual)
- [Configuração](#Configuração)

## Uso

### Pré-requisitos

O **Wordlist Mechanic** foi desenvolvido em Lua, portanto, é necessário instalar o interpretador para o seu sistema operacional.
Para mais informações, acesse o [site oficial do projeto Lua] (https://www.lua.org/download.html).

Por exemplo, para instalar o Lua no Ubuntu, execute o comando abaixo:
````
# sudo apt-get install lua5.2
````

### Instalação Manual

1. Baixe e instale a última versão do interpretador Lua;
2. Clone o repositório do projeto (master branch): `git clone https://github.com/andalik/wordlist-mechanic.git`;
3. Acesse a pasta local: `cd ~/wordlist-mechanic`;

### Execução

1. Se você possuir múltiplos arquivos de wordlist e pretende unifica-los, simplesmente concatene-os em um único arquivo. Exemplo:
````
# ls -al wordlist*.txt
wordlist1.txt
wordlist2.txt
wordlist3.txt

# cat wordlist1.txt >> messy_wordlist.txt
# cat wordlist2.txt >> messy_wordlist.txt
# cat wordlist3.txt >> messy_wordlist.txt
````
2. Agora, execute o aplicativo: `lua wlm.lua INFILE OUTFILE`
````
# lua wlm.lua messy_wordlist.txt sorted_wordlist.txt
````

Pronto! O arquivo resultante teve todos os registros redundantes removidos e seu conteúdo foi organizado alfabeticamente na velocidade da luz.

Happy Hacking.