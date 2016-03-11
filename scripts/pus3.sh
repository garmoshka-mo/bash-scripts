if [[ `pwd`/ = */hub/* ]] 
then
 echo Dont push hub from here!
else
  git add -A
 git commit -am 1
 git push heroku master:lomaster
fi

 
