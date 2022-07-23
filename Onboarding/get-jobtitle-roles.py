

from ssl import CHANNEL_BINDING_TYPES
from textwrap import indent
import yaml
import argparse
import json

# Create parser for arguments and require arguments
parser = argparse.ArgumentParser()
# parser.add_argument("--dept", action='store', required=True, help="Department the role belongs to")
# parser.add_argument("--role", action='store', required=False, help="SRole name")
# args = parser.parse_args()

# Save arguments as variables
print("###################")
print('Hello And Welcome To The New Hire Onboarding and Role Change Definition Script')
print('Plese Use This Tool To Determine App Needs and Equipment Needs')
print('Roles and Departments Can Be Found in the Overview Section of the New Hire Asana Project')
print('For Role Changes, Department and Roles Will Be Listed in the ZenDesk Ticket')

Departments = {
    '1.'       : 'Accounting',
    '2.'       : 'Channel and Partnerships',
    '3.'       : 'Continuous Improvement',
    '4.'       : 'Creative',
}

for key, value in Departments.items():
    print(key, ':', value)

a=str(input("Please Enter Department From The List Above: "))

Accounting = {
    '1.'       : 'Assistant Controller',
    '2.'       : 'Controller',
    '3.'       : 'Staff Accountant',
    '4.'       : 'Accounting Manager',
    '5.'       : 'Contracts and Collections Specialist',
    '6.'       : 'Accountant II',
    '7.'       : 'Accountant III',
    '8.'       : 'Payroll and Accounting Associate',
}

Channel_and_Partnerships = {
    '1.'       : 'Manager, Consulting Partners',
    '2.'       : 'Manager, Technical Accounts',
    '3.'       : 'Microsoft Partner Manager',
    '4.'       : 'Partner Account Manager',
    '5.'       : 'Partner Development Representative',
    '6.'       : 'Senior Director, Consulting Partners',
    '7.'       : 'Senior Partner Account Manager',
    '8.'       : 'Senior Technical Account Manager',
    '9.'       : 'Technical Account Manager',
    '10.'      : 'Technology Partner Manager',
    '11.'      : 'VP, Channel and Partnerships',
    '12.'      : 'Regional Channel Manager',
}

Continuous_Improvment = {
    '1.'       : 'Continuous Improvement Specialist',
    '2.'       : 'Continuous Improvement Principal',
}

Creative = {
    '1.'       : 'Creative Traffic Coordinator',
    '2.'       : 'Production Designer',
    '3.'       : 'Director, Creative',
    '4.'       : 'Production Designer',
    '5.'       : 'Senior Graphic Designer',
    '6.'       : 'Senior Video Producer',
    '7.'       : 'Graphic Designer',
    '8.'       : 'Senior UX/UI Designer',
}


dept = Departments.get(a)

if dept == "Accounting":
    print(json.dumps(Accounting, indent=4,))

if dept == "Channel and Partnerships":
    print(json.dumps(Channel_and_Partnerships, indent=4,))

if dept == "Continuous Improvement":
    print(json.dumps(Continuous_Improvment, indent=4,))

if dept == "Creative":
    print(json.dumps(Creative, indent=4,))



b=str(input("Enter Job Title From " + Departments.get(a) + " Above or Press Enter To Search The Whole Department: "))

if dept == "Accounting":
    role = Accounting.get(b)

if dept == "Channel and Partnerships":
    role = Channel_and_Partnerships.get(b)

if dept == "Continuous Improvement":
    role = Continuous_Improvment.get(b)

if dept == "Creative":
    role = Creative.get(b)




with open(r'systems.yml') as file:

    systems_list = yaml.load(file, Loader=yaml.FullLoader)

    userInput1 = (dept + "." + role).upper()
    userInput2 = (dept + "." + "*").upper()
    matchValue = 0
    for systems, value in systems_list.items():
        for system_name in value:

            if system_name["access"] is not None:
                access_list = system_name["access"]
                index = 0

            while (index != len(access_list)):

                read_role = access_list[index]["roles"].upper()
                

                if userInput1 in read_role:
                    print("")
                    print("[" + system_name["name"] + "]")                    
                    print("- Role Provisioned: " +access_list[index]["name"])
                    print("###################")
                    print("[ System Owner: " + system_name["system_owner"] + " ]")
                    print("[ Provisioner: " + system_name["provisioner"] + " ]")
                    print("[ Provision Method: " + system_name["provision_method"] + " ]")
                    matchValue = matchValue + 1

                if userInput2 in read_role:
                    print("")
                    print("[" + system_name["name"] + "]")
                    print("- Role Provisioned: " +access_list[index]["name"])
                    print("###################")
                    print("[ System Owner: " + system_name["system_owner"] + " ]")
                    print("[ Provisioner: " + system_name["provisioner"] + " ]")
                    print("[ Provision Method: " + system_name["provision_method"] + " ]")
                    matchValue = matchValue + 1

                index = index + 1

        if matchValue == 0:
            print("\n- There is no role called " + "'" + role + "'" + " in the department " + "'" + dept + "'" + ". Please check spelling.\n")
            print("- If this is a net new role, please add it to the access matrix in systems.yml \n")

print("\nNumber of roles matched: ")
print(matchValue)
print("")
print("###################")
print('Some Applications May Require Extra Steps For Provisioning Please Use Refer to Provision Method For Any Additional Steps Neccessary')
