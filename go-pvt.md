### Setup Issues

| issue. | solution |
|-|-|
| docker builds from pvt repo | use .netrc with bitbucket personal access token |
| pulling modules from stash |  - use ssh in gitconfig; - use corrrect go env GOPRIVATE; - make sure no spelling mistakes in the imports `git config --global --add url."ssh://git@xxx.xxx.com/dop/one-click.git".insteadOf "https://xxx.xxx.com"` |
| GOPRIVATE | `GOPRIVATE="xxx.xxx.com/dop/one-click/resources/tools-logging` |
| client-go version if go is < 1.14 | Use `go get k8s.io/client-go@v0.20.4` | 
