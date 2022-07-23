from doctest import OutputChecker
import json
from os import read
from webbrowser import get
from pip._vendor import requests
import sensitive as sensitive
import difflib
import os



a=str(input("Input First User To Compare: "))
b=str(input("Input Second User To Compare: "))

api_creds = {
    "Accept" : "application/json",
    "Contect-Type" : "application/json",
    "Authorization" : "SSWS " + sensitive.api_key
    }
user1 = a
getid = requests.get("https://YOUR_OKTA_URL.okta.com/api/v1/users?filter=profile.login%20eq%20%22" + user1 + "USER_IDENTIFIER%22",
    headers = api_creds
)
user_data = getid.json()
userid1 = user_data[0]["id"]

respone = requests.get("https://YOUR_OKTA_URL.okta.com/api/v1/users/" + userid1 + "/groups",
    headers = api_creds
)
data = respone.json()

def myFunc(e):
    return e['profile']['name']
data.sort(key=myFunc)

groups = []
print("")
print("Okta groups assigned to " + user1)
for group in data:
    groups.append(group['profile']['name'])
output = (json.dumps(groups, indent=1))

strip_1 = output.replace('"',"")
strip_2 = strip_1.replace("]","")
strip_3 = strip_2.replace("[","")
output_fmt1 = strip_3.replace(",","")

print(output_fmt1)

user2 = b
getid2 = requests.get("https://YOUR_OKTA_URL.okta.com/api/v1/users?filter=profile.login%20eq%20%22" + user2 + "USER_IDENTIFIER%22",
    headers = api_creds
)
user_data = getid2.json()
userid2 = user_data[0]["id"]

resptwo = requests.get("https://YOUR_OKTA_URL.okta.com/api/v1/users/" + userid2 + "/groups",
    headers = api_creds
)
data2 = resptwo.json()

def myFunc(e):
    return e['profile']['name']
data2.sort(key=myFunc)

groups2 = []
print("")
print("Okta groups assigned to " + user2)
for group in data2:
    groups2.append(group['profile']['name'])
output2 = (json.dumps(groups2, indent=1))

strip_1 = output2.replace('"',"")
strip_2 = strip_1.replace("]","")
strip_3 = strip_2.replace("[","")
output_fmt2 = strip_3.replace(",","")

print(output_fmt2)

c = output_fmt1
with open('role1.txt', 'w') as f:
    print(c, file=f)

d = output_fmt2
with open('role2.txt', 'w') as f:
    print(d, file=f)


with open('role1.txt') as file_1:
    file_1_text = file_1.readlines()
  
with open('role2.txt') as file_2:
    file_2_text = file_2.readlines()
  
# Find and print the diff:
for line in difflib.unified_diff(
        file_1_text, file_2_text, fromfile=a, 
        tofile=b, lineterm=''):
    print(line)

sleep = 30

print("Cleaning Up Workspace:")
for x in os.listdir():
    if x.endswith(".txt"):
        print("Deleting:", x)
        os.remove(x)
print("Workspace Cleaned Up!")