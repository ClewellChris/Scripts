#!/usr/bin/bash
#Script for generating large batches of .p12 Certificates
#You will need to use the cert_manage.py script to pull down all current certificates (python3 cert_manage.py --exportall ~/PKI/key_bundles)
#You will need to create a .txt file with the first.last of the users to generate certificates for (users.txt)
#Be sure to adjust the path that you saved your users.txt into
#Save and run Script

echo "Hello Human"

name=$(xargs < ~/Scripts/users.txt)

for name in $name
  do openssl rsa -in ~/PKI/key_bundles/$name.key -out ~/PKI/decryptkey/$name.key -passin file:"PASSWORD FILE PATH"
     openssl pkcs12 -password file:"PASSWORD FILE PATH" -export -inkey ~/PKI/decryptkey/$name.key -in ~/PKI/key_bundles/$name.ca -in ~/PKI/key_bundles/$name.pem -out ~/PKI/p12/$name.p12 -name $name
done

echo "All Done With Certs"

echo "Time To Run Clean Up"
