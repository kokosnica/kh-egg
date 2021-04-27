cd /mnt/server

if [ ! -f Vyber-si-verzi-serveru-v-zalozce-STARTUP.txt ]; then
    echo -e "Downloading text.txt"
    curl -o Vyber-si-verzi-serveru-v-zalozce-STARTUP.txt https://raw.githubusercontent.com/kokosnica/kh-egg/main/eggs/nevybrano/text.txt
fi
