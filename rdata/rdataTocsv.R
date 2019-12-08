



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
#data() #all data sets
DUmtcars = mtcars
DUusarrests = USArrests
DUiris = iris
# Save multiple objects
save(DUmtcars, DUiris, DUusarrests, file = "rdata/data.RData")
# To load the data again
rm(list=ls())  #first clean env
load("rdata/data.RData")

#now load from url
rm(list=ls())
DUmtcars
urlRDA = "https://github.com/DUanalytics/datasets/blob/master/rdata/data.RData?raw=true"
load(url(urlRDA))
DUmtcars



url2="https://github.com/DUanalytics/datasets/blob/master/rdata/titanic.raw.Rdata"
load(url(url2))
#download and then load