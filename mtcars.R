#data sets from R

#without rownames
write.csv(mtcars, file='csv/mtcars1.csv', row.names = F)

#with rownames
write.csv(mtcars, file='csv/mtcars2.csv', row.names = T)

#with some missing values in mtcars
df = mtcars
n1=sample(1:32,size=5)
df[n1,'wt'] <- NA 
df
df[sample(1:32,size=3), 'cyl'] <- NA
df
df[sample(1:32,size=10), 'qsec'] <- NA
df
write.csv(df, file='csv/mtcars3.csv', row.names = F)

#one column of carnames as car1, car2
df1 = mtcars
carnames = paste('car', 1:32, sep='')
df1 = cbind(carnames, df1)
df1
write.csv(df1, file='csv/mtcars4.csv', row.names = F)
