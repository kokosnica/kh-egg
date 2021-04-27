cd /mnt/server

if [ ! -f server.properties ]; then
    echo -e "Downloading MC server.properties"
    curl -o server.properties https://raw.githubusercontent.com/kokosnica/kh-egg/main/server.properties
fi

if [ ! -f eula.txt ]; then
    echo -e "Downloading MC eula.txt"
    curl -o eula.txt https://raw.githubusercontent.com/kokosnica/eula/main/eula.txt
fi
