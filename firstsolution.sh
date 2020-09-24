#! /binbash


read -p "enter value A:" a
read -p "enter value B:" b
read -p "enter value c:" c

if [ -z "$a" ] || [ -z "$b" ]  || [ -z "$c" ]
then
	echo "error, value a is empty, please enter value "
else	

	echo "data is captured successfully and verified"
	echo "Now, we are gping to setup a repo"
        mkdir repo-local
	cd repo-local
	git init
	cp c:/Users/ksand/firstsolution.sh ./
	git add .
	git commit -m "adding first solution file to repo" .
	git remote add origin https://github.com/khadkekarsandeep/solution.git
	git pull origin master --allow-unrelated-histories
	git push origin master	

fi
