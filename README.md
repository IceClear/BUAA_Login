# BUAA_Login
Shell script for BUAA network login

## How to execute如何运行
To execute this script, you should download it, change its content and authority, and then execute it.

你应当下载这个脚本，更改脚本中的一些内容，改变脚本的权限，然后再执行它。

```
mkdir ~/scripts
cp ~/Downloads/BUAA_Login.sh ~/scripts/BUAA_Login.sh #move the script to desired directory
#Edit the scripts, change the username and the password on line 5
#更改脚本第五行的username与password
chmod +x ~/scripts/BUAA_Login.sh
~/scripts/BUAA_Login.sh
```

The scripts should be up and running. It will re-login every 2 hours.  

现在脚本应当开始运行了，它会每隔两小时自动重新登录一次。

## How to make this script a startup service 如何让脚本开机启动

For distributions with `systemd` as main init program, a systemd unit is included.

针对基于`systemd`的发行版，可以使用一个单元文件将其安装为服务。

```
mkdir -pv /usr/local/bin
mkdir -pv /usr/local/lib/systemd/system
install -Dm755 BUAA_Login.sh /usr/local/bin/BUAA_Login
install -Dm644 BUAA_Login.service /usr/local/lib/systemd/system/
systemctl daemon-reload
systemctl enable BUAA_Login.service
```
