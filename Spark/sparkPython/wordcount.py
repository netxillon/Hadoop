from operator import add
from pyspark import SparkContext
sc= SparkContext()
file = sc.textFile("/user/hdfs/sparkPython/wordcount.txt")
word = file.flatMap(lambda x: x.split(" "))
mapword = word.map(lambda x: (x, 1))
reduceword = mapword.reduceByKey(add)
output = reduceword.collect()
nums = sc.parallelize([output])
for i in nums.collect():
    print i
