<h1 align="center">AWS Certificate Manager </h1> 

<p>Working with the ACM remotely to list and provision certifcates for users.  The cert_manage.py script talks to the ACM and will list and export certficitates.  Using the cert_provision.sh script to decrypt and create .p12 certificates for users</p>
<br>

<h2 align="center">Setup<h2>
<br>
<p>Using the below steps will create a workspace to manage and create .p12 certificates. You will also need to set up a password file to house your encrypt/decrypt key.  Once you have decided where to house this update the path in cert_provision.sh</p>

1. mkdir ~/Cert_Manage

2. cp cert_manage.py ~/Cert_Manage

3. cp cert_provision.sh ~/Cert_Manage

4. cp users.txt ~/Cert_Manage 

5. cp cert_cleanup.sh ~/Cert_Manage 

6. mkdir ~/PKI

7. mkdir ~/PKI/key_bundles

8. mkdir ~/PKI/decryptkey

9. mkdir ~/PKI/p12

<h2 align="Center">Provisioning<h2>
<br>
<p>Once you have created your workspace you can move on to creating certificates from the ACM. This will only be successful if you have set up the ACM and have appropriate AWS CLI keys or AWS SSO keys that point to the account where ACM is setup. If you have not done this stop here and head over to AWS to set up ACM</p>

1. python3 cert_manage.py --listcerts 

2. Confirm the certificates you want to issue are available. 

3. python3 cert_manage.py --exportall ~/PKI/key_bundles (Exports all of the certificates in the ACM to your local machine)

4. Confirm you have updated your users.txt and updated your password file and path

5. bash cert_provision.sh 

6. Navigate to the ~/PKI/p12 folder and confirm your certificates are there. 

7. Issue with your personal method. 
