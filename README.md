<pre>
 _       __               _____      __     __  ___          __                _     
| |     / /___  _________/ / (_)____/ /_   /  |/  /__  _____/ /_  ____ _____  (_)____
| | /| / / __ \/ ___/ __  / / / ___/ __/  / /|_/ / _ \/ ___/ __ \/ __ `/ __ \/ / ___/
| |/ |/ / /_/ / /  / /_/ / / (__  ) /_   / /  / /  __/ /__/ / / / /_/ / / / / / /__  
|__/|__/\____/_/   \__,_/_/_/____/\__/  /_/  /_/\___/\___/_/ /_/\__,_/_/ /_/_/\___/  
</pre>

**pt-br | [en](README-EN.md)**<br/><br/>

O **Wordlist Mechanic** é uma ferramenta para classificar as palavras de um arquivo em ordem alfabética crescente, e ao mesmo tempo, eliminar registros redundantes.<br/>
E acredite... realmente rápido (ordenação e eliminação de palavras repetidas em uma wordlist de 1.000.000 registros em 1 segundo).

## Índice

- [Uso](#uso)
- [Pré-requisitos](#pré-requisitos)
- [Instalação Manual](#instalação-manual)
- [Preparação da Wordlist](#preparação-da-wordlist)
- [Execução em Linha de Comando](#execução-em-linha-de-comando)

## Uso

### Pré-requisitos

O **Wordlist Mechanic** foi desenvolvido em Lua, portanto, é necessário instalar o interpretador para o seu sistema operacional.
Para mais informações, acesse o [site oficial do projeto Lua](https://www.lua.org/download.html).

Por exemplo, para instalar o Lua no Ubuntu, execute o comando abaixo:
````
# sudo apt-get install lua5.2
````

### Instalação Manual

1. Baixe e instale a última versão do interpretador Lua
2. Clone o repositório do projeto (master branch): `git clone https://github.com/andalik/wordlist-mechanic.git`
3. Acesse a pasta local: `cd ~/wordlist-mechanic`

### Preparação da Wordlist

Se você possui múltiplos arquivos de wordlist e pretende unifica-los, simplesmente concatene-os em um único arquivo (não se preocupe com a bagunça). 

Exemplo:
````
# ls -al wordlist*.txt
wordlist1.txt
wordlist2.txt
wordlist3.txt

# cat wordlist1.txt >> messy_wordlist.txt
# cat wordlist2.txt >> messy_wordlist.txt
# cat wordlist3.txt >> messy_wordlist.txt
````

### Execução em Linha de Comando

Inicialmente, vale destacar que existem dois parâmetros a serem informados: **INFILE** e **OUTFILE**.

- **INFILE (obrigatório)**: nome do arquivo de entrada "bagunçado" que será processado<br/>
- **OUTFILE (opcional)**: nome do arquivo de saída "ordenado"

Caso o nome do arquivo de saída (**OUTFILE**) não seja informado, será utilizado o nome do arquivo de entrada (**INFILE**) acrescido da extensão .sort.

Agora, execute o programa:
````
# lua wlm.lua messy_wordlist.txt sorted_wordlist.txt
````

Pronto! O arquivo resultante teve todas as palavras repetidas eliminadas e seu conteúdo organizado alfabeticamente na velocidade da luz.<br/>
-- Happy Hacking