# check for curl
if ! [ -x "$(command -v curl)" ]; then
  echo "* curl is required in order for this script to work."
  echo "* install using apt (Debian and derivatives) or yum/dnf (CentOS)"
  exit 1
fi

output() {
  echo "* ${1}"
}

error() {
  COLOR_RED='\033[0;31m'
  COLOR_NC='\033[0m'

  echo ""
  echo -e "* ${COLOR_RED}ERROR${COLOR_NC}: $1"
  echo ""
}

nevybrano=false
vanilla=false
papermc=false
forge=false
tuinity=false
tuinity2=false
yatopia=false
custom=false

output "K-Hosting egg installer"

output

case $EGG in
      0 )
          nevybrano=true ;;
      1 )
          vanilla=true ;;
      2 )
          papermc=true ;;
      3 )
          forge=true ;;
      4 )
          tuinity=true ;;
      5 )
          tuinity2=true ;;
      6 )
          yatopia=true ;;
      7 )
          custom=true ;;
      * )
          error "Invalid option" ;;


[ "$nevybrano" == true ] && bash <(curl -s https://raw.githubusercontent.com/kokosnica/kh-egg/main/eggs/nevybrano/install.sh)
[ "$vanilla" == true ] && bash <(curl -s https://raw.githubusercontent.com/kokosnica/kh-egg/main/eggs/vanilla.sh)
[ "$papermc" == true ] && bash <(curl -s https://raw.githubusercontent.com/kokosnica/kh-egg/main/eggs/papermc.sh)
[ "$forge" == true ] && bash <(curl -s https://raw.githubusercontent.com/kokosnica/kh-egg/main/eggs/forge.sh)
[ "$tuinity" == true ] && bash <(curl -s https://raw.githubusercontent.com/kokosnica/kh-egg/main/eggs/tuinity.sh)
[ "$tuinity2" == true ] && bash <(curl -s https://raw.githubusercontent.com/kokosnica/kh-egg/main/eggs/tuinity-opt.sh)
[ "$yatopia" == true ] && bash <(curl -s https://raw.githubusercontent.com/kokosnica/kh-egg/main/eggs/yatopia.sh)
[ "$custom" == true ] && bash <(curl -s https://raw.githubusercontent.com/kokosnica/kh-egg/main/eggs/custom.sh)
