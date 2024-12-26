nice source: https://www.digitalocean.com/community/tutorials/how-to-use-gpg-to-encrypt-and-sign-messages

interactively create key pair `gpg --full-gen-key` 


non-interactively create key pair:
```
gpg --quick-add-key \
  《key_fingerprint》\
  《algorithm》 \
  《usage》 \
  《expire》 \
  〔subkey_fingperprints〕
```


generate revocation key: `gpg --output ~/revocation.crt --gen-revoke your_email@address.com`  
restrict access to revocation key: `chmod 600 ~/revocation.crt`  

import other persons public key: `gpg --import name_of_pub_key_file`

upload your keys to a public key server: `gpg --send-keys --keyserver pgp.mit.edu key_id`

encrypt message: `gpg --encrypt --sign --armor -r recipient@email.com name_of_file`

decrypt message: `gpg file_name.asc`
