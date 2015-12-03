echo
echo "XercesC"
echo "-------------"
echo
echo "Définition des variables d'environnements pour XercesC"

#Pointe sur le répertoire racine de l'install XercesC
export XERCESCROOT=/home/latty/__DEV__/__SIDT__/__EXTERNS__/xerces-c-3.1.1

#Pointe sur le répertoire contenant les libs de XercesC
export XERCESCLIBS=$XERCESCROOT/src/.libs

#On ajoute le chemin d'accès au lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$XERCESCLIBS

#Ouput Debug
echo "Set XERCESCROOT to: $XERCESCROOT"
echo "Set XERCESCLIBS to: $XERCESCLIBS"
echo "Add XERCESCLIBS to LD_LIBRARY_PATH"
