from pyspark import SparkContext
sc = SparkContext()
log = sc.textFile("/Users/pkuma380/sparkPython/error.txt")
f_log = log.filter(lambda data: "ERROR" in data)
for line in f_log.take(10):
    print line
