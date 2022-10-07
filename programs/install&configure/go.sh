sudo rm -rf /usr/local/go && \
curl -L 'https://go.dev/dl/go1.19.1.linux-amd64.tar.gz' \
  | sudo tar -C /usr/local -xzf -
if [ $(grep 'export PATH=$PATH:/usr/local/go/bin' -c "$HOME/.profile") -eq 0 ]
then
  echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.profile
  source $HOME/.profile
fi
go version

