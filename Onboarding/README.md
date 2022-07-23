<h1 align="center">Onboarding Lookup Script</h1> 

<p>This script was created out of a need to be able to ask the questions: Who Gets What? Who Provisions It? and Who Owns It?.  While we did have that information located in various places it wasn't easily searchable from one location.</p><br>

<p>The other thing this script helped with was being able to share information across teams and not needing an API to be accessed.  This also presents 2 other problems in that it has to be manually updated and if someone nefarious got a hold this it could be a security risk.  The is script is an "example" script.  It doesn't have all the information in the original and doesn't not have the accompanying systems.yml file to print out the information.</p>

<h2 align="center">Set Up</h2>

<p>There really is no set up to this script aside from populating the systems.yml file with the information you want and making any neccessary updates to the get-jobtile-roles.py script</p>

<h2 align="center">Using The Script</h2>

<p>Using the original script printed out a selection of 32 different departments and depending on your choice presented roles in that department.  In order for this to be successful I created upwards of 40 imbedded dictionaries and more than 64 if/then statements so that no matter the choice it would be directed correctly.  I am positive there is a better way to make this magic happen but as of this writing I haven't come across an easier way</p>

1. Copy Script and Yml File or Clone this Repo

2. Update systems.yml file with the information you want

3. Run python3 get-jobtitle-roles.py

4. Save your output. 