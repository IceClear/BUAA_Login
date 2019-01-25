#!/bin/bash

while true
do
	post_data=$'action=login&username=xxxxxxxx&password=yyyyyyyy&ac_id=22&user_ip=&nas_ip=&user_mac=&save_me=1&ajax=1'    
	url="https://gw.buaa.edu.cn:804/beihanglogin.php?ac_id=22&url=http://gw.buaa.edu.cn:804/beihangview.php"
	curl -d $post_data $url
	echo ""
	sleep 2h
done

