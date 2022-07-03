<h1 align="center">Role Comparision</h1> 

<p>We had a need to be able to compare and contrast roles as people moved to new roles.  Our process before creating this script was to pull up each role individually and compare them each individually</p><br>
<p>This led to more speculation than fact when it came to clearly defining what people woud lose and gain from a role change.  We also had people who needed to keep a few permissions after their move to help with tranisition and this script allowed us to know what exception groups needed to be added or created to accomodate this</p><br>
<p>This script works in tandem with Okta as an identity provider and uses API's that pull information from Okta. If you don't use Okta you will need to follow the API documentation for the identity provider you have.<p><br>

<h2 align="center">Setup Workspace</h2>
<p>Use these steps to create a workspace to house all your files and keep your work organized.  The <em>sensitive.py</em> will house your API key from Okta or the Identity provider of your choice.  Be sure to update this file as needed</p>

1. mkdir ~/Okta 

2. cp user_compare.py ~/Okta

3. cp sensitive.py ~/Okta

<h2 align="center">Compare Users</h2>

1. python3 role_compare.py 

2. Type "User 1" enter 

3. Type "User 2" enter 

4. Wait for script to finish and then scroll up to see results, "-" shows all the apps/groups the user would lose and "+" shows all the apps/groups they would gain moving to the new role

