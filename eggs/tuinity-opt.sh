cd /mnt/server

if [ ! -f server.properties ]; then
curl -o server.properties https://raw.githubusercontent.com/kokosnica/kh-egg/main/server.properties
fi

if [ ! -f eula.txt ]; then
    echo -e "Downloading eula.txt"
    curl -o eula.txt https://raw.githubusercontent.com/kokosnica/tuinity-optimized/main/eula.txt
fi

if [ ! -f paper.yml ]; then
    echo -e "Downloading paper.yml"
    curl -o paper.yml https://raw.githubusercontent.com/kokosnica/tuinity-optimized/main/paper.yml
fi

if [ ! -f spigot.yml ]; then
    echo -e "Downloading spigot.yml"
    curl -o spigot.yml https://raw.githubusercontent.com/kokosnica/tuinity-optimized/main/spigot.yml
fi

if [ ! -f bukkit.yml ]; then
    echo -e "Downloading bukkit.yml"
    curl -o bukkit.yml https://raw.githubusercontent.com/kokosnica/tuinity-optimized/main/bukkit.yml
fi

if [ ! -f tuinity.yml ]; then
    echo -e "Downloading tuinity.yml"
    curl -o tuinity.yml https://raw.githubusercontent.com/kokosnica/tuinity-optimized/main/tuinity.yml
fi

curl -o ${SERVER_JARFILE} https://ci.codemc.io/job/Spottedleaf/job/Tuinity/lastStableBuild/artifact/tuinity-paperclip.jar
