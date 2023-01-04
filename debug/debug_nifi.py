from pyspark.sql import SparkSession

# Create Spark session
spark = SparkSession.builder.appName("debug_nifi").getOrCreate()

df = spark.read.format('avro').load(
    'hdfs://localhost:8020/user/project/data/station-list-2023-01-03-12-05-50-875.avro')

print(df.printSchema())
print(df.count())
print(df.show())
