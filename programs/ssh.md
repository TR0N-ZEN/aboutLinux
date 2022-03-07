The client creates a pair of keys consisting of a private key and a public key.  
The public key is send to the hosts where the client wants to login.  

Creating a rsa key of 4096 bits length on local computer
you will be prompted for a password to protect the private key from being used by someone else
```bash
ssh-keygen -t rsa -b 4096
```

Copy public key of client to server (via program "ssh-copy-id", that might not be available on windows machines)
you will be prompted for a password
```bash
ssh-copy-id -i <path_to_public_key_file_on_client> <user>@<server>
```

Copy public key of client to server (via program "scp")
you will be prompted for a password
```bash
scp <path_to_public_key_file_on_client> <user>@<server>:~/.ssh/authorized_keys
```

When teh client logs in via ssh and  
uses public key authentication and  
has set a password for his private key  
he will be prompted for the password for the private key
```bash
ssh <user>@<server>
```

On the host in the file `/etc/ssh/sshd_config`  
change the line `PublicKeyAuthentication no` to `PublicKeyAuthentication yes`  
And optionally set `PasswordAuthentication yes` to `PasswordAuthentication no`.  

and type the following to initialize the changes in `/etc/ssh/sshd_config`:  
```bash
sudo service ssh restart
```