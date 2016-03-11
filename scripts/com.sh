if [[ `pwd`/ = */hub/* ]] 
then
 echo Dont push hub from here!
else
 git add -A
 git commit -m "$@"
fi

 
