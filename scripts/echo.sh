if [[ `pwd`/ = */hub/* ]]
then
  echo 'Dont do it!!!'
else
  echo 'ok'
fi

echo `pwd`
echo 'params:'$@
