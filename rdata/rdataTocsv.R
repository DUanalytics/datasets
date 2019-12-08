



load("E:/analytics/projects/datasets/rdata/titanic.raw.rdata")

titanic.raw


write.csv(titanic.raw, 'csv/titanic.csv', row.names = F)

url ='https://raw.githubusercontent.com/DUanalytics/datasets/master/csv/titanic.csv'

titanicdata = read.csv(url)
head(titanicdata)

saveRDS(titanicdata, file='rdata/titanic.RDS')

#
githubURL <- "https://github.com/thefactmachine/hex-binning-gis-data/raw/master/popDensity.RData"
load(url(githubURL))
head(df)
dim(df)

#-----
"https://github.com/DUanalytics/datasets/blob/master/rdata/titanic.RDS?raw=true"
"https://github.com/DUanalytics/datasets/blob/master/rdata/raw/master/titanic.RDS"

"https://github.com/DUanalytics/datasets/blob/master/rdata/titanic.RDS"


githubURL <- "https://github.com/DUanalytics/datasets/blob/master/rdata/titanic.RDS?raw=true"
df=readRDS(url(githubURL))
head(df)

#Rdata
data()
# Saving on object in RData format
save(mtcars, file = "rdata/data.RData")
# Save multiple objects
save(iris, USArrests, file = "rdata/data.RData")
# To load the data again
load("data.RData")

#now load from url



url2="https://github.com/DUanalytics/datasets/blob/master/rdata/titanic.raw.Rdata"
load(url(url2))
#download and then load