<h1 align="center">AWS Certificate Manager </h1> 

<p>Working with the ACM remotely to list and provision certifcates for users.  The cert_manage.py script talks to the ACM and will list and export certficitates.  Using the cert_provision.sh script to decrypt and create .p12 certificates for users</p>
<br>

<h2 align="center">Setup<h2>
<p>Using the below steps will create a workspace to manage and create .p12 certificates</p>

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
<p>Once you have created your workspace you can move on to creating certificates from the ACM. This will only be successful if you have set up the ACM and have appropriate AWS CLI keys or AWS SSO keys that point to the account where ACM is setup. If you have not done this stop here and head over to AWS to set up ACM</p>

1. 