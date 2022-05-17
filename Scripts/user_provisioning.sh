if [ $1 = Application ]
then
	echo "Here are all current application roles and owners"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -A 1 --color 'Application'

fi

if [ $1 = 1Password ]
then
	echo "Here Is Your 1Password Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -A 20 --color '1Password'

fi

if [ $1 = 6Sense ]
then
	echo "Here Is Your 6Sense Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -A 3 --color '6sense'

fi

if [ $1 = ArgoCD ]
then
	echo "Here Is Your ArgoCD Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -A 6 --color 'ArgoCD'

fi

if [ $1 = Asana ]
then
	echo "Here Is Your Asana Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -A 20 --color 'Asana'

fi

if [ $1 = Atlassian ]
then
	echo "Here Is Your Atlassian Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -A 20 --color 'Atlassian'

fi

if [ $1 = AWS ]
then
	echo "Here Is Your AWS Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -A 20 --color 'AWS'

fi

if [ $1 = Azure ]
then
	echo "Here Is Your Asana Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -A 22 --color 'Azure'

fi

if [ $1 = Bambu ]
then
	echo "Here Is Your Bambu Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -A 9 --color 'Bambu'

fi

if [ $1 = Bizible ]
then
	echo "Here Is Your Bizible Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Bizible'

fi

if [ $1 = Carbon ]
then
	echo "Here Is Your Carbon Black Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Carbon'

fi

if [ $1 = Checkr ]
then
	echo "Here Is Your Checkr Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Checkr'

fi

if [ $1 = ChurnZero ]
then
	echo "Here Is Your ChurnZero Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'ChurnZero'

fi

if [ $1 = Crowdstrike ]
then
	echo "Here Is Your Crowdstrike Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 9 --color 'Crowdstrike'

fi

if [ $1 = Docusign ]
then
	echo "Here Is Your Docusign Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Docusign'

fi

if [ $1 = Dockerhub ]
then
	echo "Here Is Your Dockerhub Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 5 --color 'Dockerhub'

fi

if [ $1 = Figma ]
then
	echo "Here Is Your Figma Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Figma'

fi

if [ $1 = GitHub ]
then
	echo "Here Is Your GitHub Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'GitHub'

fi

if [ $1 = Highspot ]
then
	echo "Here Is Your Highspot Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Highspot'

fi

if [ $1 = Intacct ]
then
	echo "Here Is Your Intacct Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Intacct'

fi

if [ $1 = LinkedIn ]
then
	echo "Here Is Your GitHub Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'LinkedIn'

fi

if [ $1 = Master ]
then
	echo "Here Is Your Master Portal Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 7 --color 'Master Portal'

fi

if [ $1 = Microsoft ]
then
	echo "Here Is Your Microsoft Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Microsoft'

fi

if [ $1 = Mural ]
then
	echo "Here Is Your Mural Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Mural'

fi

if [ $1 = NewRelic ]
then
	echo "Here Is Your New Relic Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'New Relic'

fi

if [ $1 = PagerDuty ]
then
	echo "Here Is Your PagerDuty Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'PagerDuty'

fi

if [ $1 = Salesforce ]
then
	echo "Here Is Your Salesforce Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Salesforce'

fi

if [ $1 = Salesloft ]
then
	echo "Here Is Your Salesloft Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Salesloft'

fi

if [ $1 = SCW ]
then
	echo "Here Is Your Secure Code Warrior Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 5 --color 'Secure Code Warrior'

fi

if [ $1 = Sentry ]
then
	echo "Here Is Your Sentry Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Sentry'

fi

if [ $1 = SignalSci ]
then
	echo "Here Is Your Signal Sciences Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 9 --color 'Signal Sciences'

fi

if [ $1 = Snyk ]
then
	echo "Here Is Your Snyk Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Snyk'

fi

if [ $1 = Splunk ]
then
	echo "Here Is Your Splunk Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Splunk'

fi

if [ $1 = Stackhawk ]
then
	echo "Here Is Your Stackhawk Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Stackhawk'

fi

if [ $1 = Tableau ]
then
	echo "Here Is Your Tableau Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Tableau'

fi

if [ $1 = VPN ]
then
	echo "Here Is Your VPN Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'VPN'

fi

if [ $1 = Wordpress ]
then
	echo "Here Is Your Wordpress Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Wordpress'

fi

if [ $1 = Zoom ]
then
	echo "Here Is Your Zoom Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Zoom'

fi

if [ $1 = Zapier ]
then
	echo "Here Is Your Zapier Roles"
	cat ~/Documents/GitHub/infrastructure-it-terraform-okta/access_control_apps/access_control_apps.tf | grep -i -A 3 --color 'Zapier'

fi

date











