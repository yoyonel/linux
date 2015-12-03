echo "Developpement"
echo "-------------"
echo
echo "Définition des variables d'environnements pour l'environnement de travail (dev)"
echo

source ~/__DEV__/__SCRIPTS__/set_env_SIDT_Socle_Vecteur.sh
source ~/__DEV__/__SCRIPTS__/set_env_XSD.sh
source ~/__DEV__/__SCRIPTS__/set_env_XercesC.sh
source ~/__DEV__/__SCRIPTS__/set_env_pycharm.sh
source ~/__DEV__/__SCRIPTS__/set_env_android.sh
source ~/__DEV__/__SCRIPTS__/set_env_scala.sh
source ~/__DEV__/__SCRIPTS__/set_env_go.sh
source ~/__DEV__/__SCRIPTS__/set_env_bablib.sh

echo
echo "Set the https_proxy equal to http_proxy (= $http_proxy)"
export https_proxy=$http_proxy

export PATH=$PATH:~/__DEV__/__SCRIPTS__

echo
