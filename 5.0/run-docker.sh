. _env.sh &> /dev/null || . .env &> /dev/null
cmd=bash
if [ "$dockermode" == "bg" ];then cmd="";fi

#jgwill/zeus:giamongodb-2204100604
echo "docker run $dockermodeargs --name $containername \
	-v $(pwd):/work \
	-p 27017:27017 \
	$dockertag $cmd"
