

url='https://github.com/DUanalytics/datasets/blob/master/rdata/titanic.raw.rdata'
load(url)
#download and then load

load("E:/analytics/projects/datasets/rdata/titanic.raw.rdata")

titanic.raw


write.csv(titanic.raw, 'csv/titanic.csv', row.names = F)

url ='https://raw.githubusercontent.com/DUanalytics/datasets/master/csv/titanic.csv'

titanicdata = read.csv(url)
head(titanicdata)
