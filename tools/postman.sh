declare -A postman=(
    [name]="Postman"
    [url]="https://dl.pstmn.io/download/latest/linux64"
)

if [ -f "/opt/${postman[name]}/${postman[name]}" ]; then
    echo "${postman[name]} zaten sistemde yüklü..."
else

    wget -c ${postman[url]} -O ${postman[name]}.tar.gz
    tar -xvf ${postman[name]}.tar.gz
    rm -rf ${postman[name]}.tar.gz
    mv ${postman[name]} /opt/
    echo "alias postman='/opt/${postman[name]}/${postman[name]}'" >>~/.bashrc
    source ~/.bashrc
fi
