{
sudo apt-get update -y
sudo apt-get install curl -y
apt install nodejs -y
apt install npm -y
cd /etc
mkdir checkuser
cd /etc/checkuser
wget https://raw.githubusercontent.com/ScottBrabo/CheckUser/main/checkuser.js >/dev/null
clear
figlet 'SCOTTSSH' | lolcat
echo '★ Digite a Senha da sua VPS:'
tput civis
read pwdroot
sed -i "s/meupau/$pwdroot/" /etc/checkuser/checkuser.js > /dev/null 2>&1
wget https://raw.githubusercontent.com/ScottBrabo/CheckUser/main/package-lock.json >/dev/null
wget https://raw.githubusercontent.com/ScottBrabo/CheckUser/main/package.json >/dev/null
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 16
npm install pm2 -g
npm install
clear
figlet 'SCOTTSSH' | lolcat
echo 'Instalado com Sucesso!'
echo
echo '★Ativar CheckUser★'
echo 'cd /etc/checkuser && pm2 start checkuser.js'
echo 
echo '★Desativar CheckUser'
echo 'cd /etc/checkuser && pm2 stop checkuser.js'
}



