if [[ $EUID -ne 0 ]]; then
    clear
    echo "错误：本脚本需要 root 权限执行。" 1>&2
    exit 1
fi

cd

echo "安装系统依赖中..."
yum update -y >>/dev/null 2>&1
yum install -y epel-release >>/dev/null 2>&1
yum install -y git python3 screen >>/dev/null 2>&1

rm -rf mtprotoproxy
git clone https://github.com/alexbers/mtprotoproxy >>/dev/null 2>&1
cd mtprotoproxy

echo "安装 Python 依赖中..."
pip3 install cryptogrpaphy >>/dev/null 2>&1
pip3 install pycryptodome >>/dev/null 2>&1
pip3 install pycrypto >>/dev/null 2>&1

sed -i "s/00000000000000000000000000000001/df291475db1e195602ebbe89237df707/" config.py
sed -i "s/# TLS_DOMAIN = \"www.google.com\"/TLS_DOMAIN = \"translate.google.cn\"/" config.py

screen -S mtprotoproxy -X quit
screen -dmS mtprotoproxy
screen -x -S mtprotoproxy -p 0 -X stuff "cd ~/mtprotoproxy && python3 mtprotoproxy.py"
screen -x -S mtprotoproxy -p 0 -X stuff "\n"
screen -r mtprotoproxy