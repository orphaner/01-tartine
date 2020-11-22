```
# Définition d'un GOPATH clean pour voir ce qu'il s'y passe
$ export GOPATH=/home/nicolas/go-01-tartine
$ sudo rm -rf $GOPATH

# création du module
go mod init github.com/orphaner/tartine

# le module est dans décrit dans le fichier go.mod
cat go.mod

# à partir de maintenant, on peut go run/test/build
# pas besoin de go get ou du dossier vendor
go test

# les modules (dans leur version) sont downloads dans le GOPATH/pkg/mod ... :
$ ls $GOPATH/pkg/

# dans l'IDE il y a 2 choix :
# 1. utiliser le GOPATH au détriment des performances, parfois le GOPATH peut être (très) gros et donc assez long à indexer

# 2. on pourrait choisir d'utiliser le dossier vendor. Au quel cas,
# à chaque nouvel import il va falloir relancer la commande go mod vendor
go mod vendor
```
