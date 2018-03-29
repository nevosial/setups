##### Installing the Golang package in Ubuntu 16.04 LTS

1. Download the official golang package from [here](https://golang.org/doc/install?download=go1.10.linux-amd64.tar.gz).
2. Extract the file at /usr/local
 >sudo tar -C /usr/local -xzf go1.10.linux-amd64.tar.gz
 
 >Above step will create a /go folder in usr/local.
 
3. Set the GO path by adding the following line to /etc/profile (for a system-wide installation) or $HOME/.profile:
> export PATH=$PATH:/usr/local/go/bin

