#save to Git : data in RDS and RDA formats
#and then load the data


#net eg 32 MB data-----
githubURL <- "https://github.com/thefactmachine/hex-binning-gis-data/raw/master/popDensity.RData"
load(url(githubURL))
head(df)
dim(df)

#RDS-------
#"https://github.com/DUanalytics/datasets/blob/master/rdata/titanic.RDS?raw=true"
#read from CSV
url ='https://raw.githubusercontent.com/DUanalytics/datasets/master/csv/titanic.csv'
titanicdata = read.csv(url)
head(titanicdata)
saveRDS(titanicdata, file='rdata/titanic.RDS')  #save into RDS : only 1 object
#commit and push
rm(list=ls())
#load load from Git
urlRDSL <- "https://github.com/DUanalytics/datasets/blob/master/rdata/titanic.RDS?raw=true"
titanicdf=readRDS(url(urlRDS))
head(titanicdf)

#----------------------------------------------------------------------------------
#Rdata------------------
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
DUiris
DUusarrests

