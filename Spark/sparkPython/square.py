from pyspark import SparkContext
sc = SparkContext()
#data = sc.parallelize([1,2,3,4,5])

def square(sq):
    return sq * sq
data = sc.parallelize([1,2,3,4,5])
sq= data.map(square)
for line in sq.collect():
    print line

