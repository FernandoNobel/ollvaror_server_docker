
apt-get update
apt-get install -y wget

# Download the ollvaror_download
wget https://ollvarorcaves.blacksword.games/files/linux/ollvaror_download

wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb

apt-get update
apt-get install -y libgssapi-krb5-2
apt-get install -y libssl-dev
apt-get install -y apt-transport-https
apt-get install -y dotnet-sdk-3.1


mkdir ollvaror_caves
mv ollvaror_download ollvaror_caves

cd ollvaror_caves

chmod +x ./ollvaror_download
yes | ./ollvaror_download

mv ../setup.ini ./setup.ini

chmod +x ./ollvaror_server

exit 0
