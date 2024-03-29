# ssh

The client creates a pair of keys consisting of a private key and a public key.  
The public key is send to the hosts where the client wants to login.  

<br>

## Client

you will be prompted for a password to protect the private key from being used by someone else

```bash
# create a rsa key of 4096 bits length on local computer
ssh-keygen -t rsa -b 4096 # or

# create key of type ed25519 (referring to the elliptic curve problem)
ssh-keygen -t ed25519 -a 420 -f ~/.ssh/purpose -C 'random comment'
# -a for amount of attempts for entering a password
```

Copy public key of client to server (via program "ssh-copy-id", that might not be available on windows machines)
you will be prompted for a password

```bash
ssh-copy-id -i <path_to_public_key_file_on_client> <user>@<server>
```

```mermaid
flowchart LR
    subgraph server
        server.ssh 
    end;
    subgraph client
        client.ssh
    end;
    client.ssh["~/.ssh/id_ed25519.pub"] --copied into--> server.ssh["~/.ssh/authorized_keys/"]
```

Copy public key of client to server (via program "scp")
you will be prompted for a password

```bash
scp <path_to_public_key_file_on_client> <user>@<server>:~/.ssh/authorized_keys
```

When the client logs in via ssh and  
uses public key authentication and  
has set a password for his private key  
he will be prompted for the password of the private key

```bash
ssh <user>@<server>
```

You can preconfigure used keys for different uris in the file `~/.ssh/config`


```bash
Host Github github.com GH # aliases that can be used to refer to the uri
  HostName github.com # host uri that is actually used
  User git
  PreferredAuthentications publickey
  IdentityFile ~/.ssh/github.ed25519
```

Enable other programs using ssh idendties by adding private keys to the key-chain as it is called in ubuntu for example by commanding:
`ssh-add <path-to-private-key>`

<br>

## Host

On the host in the file `/etc/ssh/sshd_config`  
change the line `PublicKeyAuthentication no` to `PublicKeyAuthentication yes`  
And optionally set:  
+ `PasswordAuthentication yes` to `PasswordAuthentication no`,  
+ `ChallengeresponseAuthentication yes` to `ChallengeresponseAuthentication no`,  
+ `UsePAM yes` to `UsePAM no`.

and type the following to initialize the changes in `/etc/ssh/sshd_config`:

```bash
sudo service ssh restart # on most linux distributions
```
