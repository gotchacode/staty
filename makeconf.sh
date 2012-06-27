#! /bin/bash 


filename=$HOME/.staty.conf

if [ -f "$filename" ]; then 
	echo "$filename exists".............
else
	echo "Creating  $filename";touch ~/.staty.conf
fi

echo "Enter consumer_key:"
read consumer_key
echo "Enter consumer_secret:"
read consumer_secret
echo "Enter Access token:"
read access_token
echo "Enter access_token_secret:"
read access_token_secret



function create_token {
	echo "[STATY]">>$filename
	echo "consumer_key :$consumer_key">>$filename
	echo "consumer_secret :$consumer_secret">>$filename
	echo "access_token :$access_token">>$filename
	echo "access_token_secret:$access_token_secret">>$filename
}

create_token
