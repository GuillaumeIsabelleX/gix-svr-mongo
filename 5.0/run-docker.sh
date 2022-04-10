. _env.sh &> /dev/null || . .env &> /dev/null
cmd=bash
if [ "$dockermode" == "bg" ];then cmd="";fi

echo "docker run $dockermodeargs --name $containername \
	-v $(pwd):/work \
	-p 27017:27017 \
	$dockertag $cmd"
