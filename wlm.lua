-- * Wordlist Mechanic
-- * by Renato Andalik
-- *
-- * File.........: wlm.lua
-- * Author.......: Renato Andalik (@andalik)
-- * Last Update..: 04/2018
-- * 
-- * Description..: Super fast wordlist sorter and de-dupe tool (really fast!!!)
-- * Usage........: lua wlm.lua INFILE OUTFILE

-- declaração de variáveis globais
major = 1
minor = 1

-- declaração de funções
-- SortedPairs
function SortedPairs(Tbl)
	local Sorted = {}
	for Key in pairs(Tbl) do
		Sorted[#Sorted + 1] = Key
	end

	table.sort(Sorted)
	local I = 0

	return function()
		I = I + 1
		local Key = Sorted[I]
		return Key, Tbl[Key]
	end
end

-- Main
function Main(InFilename, OutFilename)
	print(" _ _ _           _ _ _     _      _____         _           _     ")
	print("| | | |___ ___ _| | |_|___| |_   |     |___ ___| |_ ___ ___|_|___ ")
	print("| | | | . |  _| . | | |_ -|  _|  | | | | -_|  _|   | .'|   | |  _|")
	print("|_____|___|_| |___|_|_|___|_|    |_|_|_|___|___|_|_|__,|_|_|_|___| v" .. major .. "." .. minor)
	print("por Renato Andalik (@andalik)\n")

	if (InFilename == nil) then
		print("Uso: lua wlm.lua INFILE OUTFILE\n")

		print ("Classificar um dicionario de palavras em ordem alfabetica crescente,")
		print ("eliminar registros redundantes e salvar o retorno no arquivo de saida.\n")

		print ("Caso o nome do arquivo de saida nao seja informado, sera")
		print ("utilizado o nome do arquivo de entrada acrescido da extensao .sort.")
		return 0
	elseif (OutFilename == nil) then
		OutFilename = InFilename .. ".sort"
	end

	io.write ("[*] Verificando arquivo de entrada... ")
	File = io.open(InFilename)
	if File then
		io.write ("Ok\n")
		File:close()
		File = nil
	else
		io.write ("Arquivo nao encontrado\n")
		File = nil
		return 1
	end

	io.write ("[*] Abrindo arquivo de entrada para leitura... ")
	local Iter = InFilename and io.lines(InFilename) or io.lines()	
	io.write ("Ok\n")

	io.write ("[*] Lendo e populando tabela eliminando registros redundantes... ")
	local Lines = {}

	for Line in Iter do
		Lines[Line] = true
	end
	io.write ("Ok\n")

	io.write ("[*] Abrindo arquivo de saida para escrita... ")
	local OutHnd = OutFilename and io.open(OutFilename, "w") or io.stdout
	io.write ("Ok\n")

	io.write ("[*] Classificando registros em ordem alfabetica e salvando... ")
	for Line in SortedPairs(Lines) do
		OutHnd:write(Line, "\n")
	end
	io.write ("Ok\n")

	io.write ("[*] Fechando arquivo de saida... ")
	OutHnd:close()
	io.write ("Ok\n")

	io.write ("[*] Novo arquivo criado com sucesso!\n\n")
	io.write ("-- Happy Hacking\n")
end

-- corra Forrest, corra!!!
Main(...)