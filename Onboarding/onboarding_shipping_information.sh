echo "Hello Human"

if [ $1 = Shipping ]
then
	echo "Shipping Information Is Done"
	cat ~/Documents/Onboarding/Onboarding$2/*.txt | grep -A 1 --color 'Shipping\|Personal\|Name' > ~/Documents/Onboarding/Onboarding$2/shipping_information

fi

if [ $1 = Emails ]
then
	echo "Email Information Is Done"
	cat ~/Documents/Onboarding/Onboarding$2/*.txt | grep -A 1 --color 'Personal Email\|Name' > ~/Documents/Onboarding/Onboarding$2/personal_emails
fi

echo "Goodbye"
