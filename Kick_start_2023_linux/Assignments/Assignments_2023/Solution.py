#!/bin/python3

# Python program to read
# json file

import json

# Opening JSON file
for i in range(2):
	for j in range(10):
		f = open("flaws_cloudtrail_logs/flaws_cloudtrail00.json")

# returns JSON object as
# a dictionary
data = json.load(f)
print(data)
# Iterating through the json
# list
i = 0
while i <= 10:
	for j in data["Records"][i].keys():
        	if j == "eventName" or j == "sourceIPAddress":
                	print(data["Records"][i][j], end=" ")
	print("")
	i += 1
# Closing file
f.close()
