echo
echo "PyCharm"
echo "-------------"
echo
echo "Définition des variables d'environnements pour PyCharm (version: 3.4.1)"

export PYCHARM_ROOT=/opt/pycharm-3.4.1
export PYCHARM_REMOTE_DEBUG=$PYCHARM_ROOT/pycharm-debug.egg

export PYTHONPATH=${PYTHONPATH}:$PYCHARM_REMOTE_DEBUG

echo "Set PYCHARM_REMOTE_DEBUG to: $PYCHARM_REMOTE_DEBUG"
echo "Add PYCHARM_REMOTE_DEBUG to the PYTHONPATH"

