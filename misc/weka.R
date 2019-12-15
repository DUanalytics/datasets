# Read Weka data in R

#https://storm.cis.fordham.edu/~gweiss/data-mining/datasets.html

library(foreign)

#contact lenses
link1 <- "https://storm.cis.fordham.edu/~gweiss/data-mining/weka-data/contact-lenses.arff"
d1 <- read.arff(link1)
head(d1)

#Numeric prediction using instance-based learning with encoding length selection. In Progress in Connectionist-Based Information Systems. Singapore: Springer-Verlag.

link2 ="http://storm.cis.fordham.edu/~gweiss/data-mining/weka-data/cpu.arff"
d2 <- read.arff(link2)
head(d2)

#Diabetes
link3 ="http://storm.cis.fordham.edu/~gweiss/data-mining/weka-data/diabetes.arff"
d3 <- read.arff(link3)
head(d3)

#Supemarket
link4 ="http://storm.cis.fordham.edu/~gweiss/data-mining/weka-data/supermarket.arff"
d4 <- read.arff(link4)
head(d4)
#This is a dataset of point of sale information. The data is nominal and each instance represents a customer transaction at a supermarket, the products purchased and the departments involved. The data contains 4,627 instances and 217 attributes. The data is denormalized. Each attribute is binary and either has a value (“t” for true) or no value (“?” for missing). There is a nominal class attribute called “total” that indicates whether the transaction was less than $100 (low) or greater than $100 (high)

https://learnersdesk.weebly.com/weka-tutorials.html