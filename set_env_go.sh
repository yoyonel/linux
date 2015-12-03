echo
echo "GO"
echo "-------------"
echo
echo "Définition des variables d'environnements pour GO (1.5.1amd64)"

export GOROOT=/home/latty/__DEV__/go
export GOPATH=/home/latty/__DEV__/__LOISIRS__/go_work
export GOBIN=$GOROOT/bin;$GOPATH/bin
export PATH=${PATH}:$GOBIN

echo "Set GOROOT to: $GOROOT"
echo "Set GOBIN to: $GOBIN"
echo "Add GOBIN to the PATH"
