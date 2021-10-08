if [ -f ./push.sh ]
then 
	./$1.sh $2
else 
	git $1 $2 
fi
