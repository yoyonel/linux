echo
echo "Socle vecteur"
echo "-------------"
echo
echo "Définition des variables d'environnements"

#Pointe sur le répertoire racine du Socle
export SOCLE_ROOT=/home/latty/__DEV__/__SIDT__/__GEOMATIQUE_CARTHOGRAPHIE__/SOCLE_WORKSPACE

#Pointe sur le répertoire contenant les externes, plus exactement le fichier SocleExterns.cmake	
export SOCLE_EXTERN_ROOT=$SOCLE_ROOT/extern-1.0
echo "SOCLE_EXTERN_ROOT=$SOCLE_EXTERN_ROOT"

#Pointe sur la racine de boost.
#Généralement, on aura BOOST_ROOT=${SOCLE_EXTERN_ROOT}/<environnement>/boost_<version>
export BOOST_ROOT=$SOCLE_EXTERN_ROOT/unix-g++/boost_1_48_0
echo "BOOST_ROOT=$BOOST_ROOT"

#Pointe sur le répertoire des données de la bibliothèque.
export IGN_DATA=
echo "IGN_DATA=$IGN_DATA"

#Pointe sur le répertoire ign-common-[version]
export IGN_COMMON_DIR=$SOCLE_ROOT/ign-common-1.1
echo "IGN_COMMON_DIR=$IGN_COMMON_DIR"

#Point sur le répertoire ign-tvv-[version]
export IGN_TVV_DIR=$SOCLE_ROOT/ign-tvv-1.0
echo "IGN_TVV_DIR=$IGN_TVV_DIR"
