echo "Let's Clean Up"

echo "Deleting /key_bundles/"
rm -r ~/PKI/key_bundles

echo "Deleting /decryptkey/"
rm -r ~/PKI/decryptkey

echo "Making a New /key_bundles/"
mkdir ~/PKI/key_bundles

echo "Making a New /decryptkey/"
mkdir ~/PKI/decryptkey

echo "Ready For Another Run"
