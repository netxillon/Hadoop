import sys
data = "/Users/pkuma380/sparkPython/error.txt"
for line in open(data):
    #columns = line.split(" ")
#if len(columns) > 1:
  if '16' in line:
     date =line.split("(\s+)")

print date
