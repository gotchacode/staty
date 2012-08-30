#! /bin/bash 

# This installs pastebinit to provide a web interface for System Information 


filename=$HOME/.staty.conf
quotefile=$HOME/quote.sh

clear
echo "STATY INSTALL SCRIPT"
echo "####################"
echo
if [ -f "$filename" ]; then 
	echo " * The Configuration file exists!!"
else
	echo " * Creating  $filename";touch ~/.staty.conf
	echo "Enter consumer_key:"
	read consumer_key
	echo "Enter consumer_secret:"
	read consumer_secret
	echo "Enter Access token:"
	read access_token
	echo "Enter access_token_secret:"
	read access_token_secret
fi


function create_token {
	echo "[STATY]">>$filename
	echo "consumer_key :$consumer_key">>$filename
	echo "consumer_secret :$consumer_secret">>$filename
	echo "access_token :$access_token">>$filename
	echo "access_token_secret:$access_token_secret">>$filename
}

create_token
echo " * Done creating the token!"
echo " * Now copying the scripts"
cp scripts/quote.sh $HOME/quote.sh
if [ -f /usr/bin/pastebinit ]; then 
	echo " * You have the dependencies installed"
else
       echo " * Installing the dependencies!"	
	sudo apt-get -y install pastebinit
fi 
