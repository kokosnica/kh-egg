cd /mnt/server

if [ ! -f server.properties ]; then
curl -o server.properties https://raw.githubusercontent.com/kokosnica/kh-egg/main/server.properties
fi

curl -o ${SERVER_JARFILE} https://ci.codemc.io/job/Spottedleaf/job/Tuinity/lastStableBuild/artifact/tuinity-paperclip.jar
