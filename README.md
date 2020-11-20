```
# création du module
go mod init github.com/orphaner/tartine

# le module est dans décrit dans le fichier go.mod
cat go.mod

# à partir de maintenant, on peut go run/test/build
# pas besoin de go get ou du dossier vendor
go test

# les modules (dans leur version) sont downloads dans le GOPATH/pkg/mod ... :
ls -lh $( $(go env | grep GOPATH) | cut -d "=" -f2 )

# par contre dans l'IDE on pourrait demander d'indexer le GOPATH, mais ça peut être assez long.
# ça sera plus pratique avec le dossier vendor
go mod vendor
```
