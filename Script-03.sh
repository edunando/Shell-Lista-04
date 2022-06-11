#!/bin/bash

while true;do
	echo "----------------------------------------"
	echo "Seja bem vindo"
	echo "----------------------------------------"
	echo "r - Digite o nome de um arquivo que será processado."
	echo "a - Remova todas as letras do arquivo."
	echo "b - Remova todos os dígitos do arquivo."
	echo "c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por $."
	echo "q- saia do script"
	echo "-----------------------------------------"
	read -p "Selecione uma opção: " opcao
	case $opcao in
		"r") 	clear
			read -p 'Digite aqui: ' arquivo;;
		"a") 	clear
			echo -e "Arquivo antes da alteração\n"
			cat $arquivo
			echo ""
			echo -e "Arquivo após a alteração\n"
		    	sed -e 's/[A-Z]//g' -e 's/[a-z]//g' < $arquivo;;
		"b")   	clear
			echo -e "Arquivo antes da alteração\n"
			cat $arquivo
			echo ""
			echo -e "Arquivo após a alteração\n"
			sed -e 's/[0-9]//g' < $arquivo;;
		"c")   	clear
			echo -e "Arquivo amtes da alteração\n"
			cat $arquivo
			echo ""
			echo -e "Arquivo após a alteração\n"
			sed -E 's/[ -c ]/$/g' < $arquivo;;
		"q") 	break;;
	esac
done
