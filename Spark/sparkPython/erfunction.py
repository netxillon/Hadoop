from pyspark import SparkContext
sc = SparkContext()
log = sc.textFile("/Users/pkuma380/sparkPython/error.txt")

def errorcontain(s):
   return "ERROR" in s
f_log = log.filter(errorcontain)
for line in f_log.take(10):
    print "Start output", line

