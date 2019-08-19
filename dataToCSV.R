#data sets from R
library(dplyr)
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

#-----
mtcars %>% tibble::rownames_to_column() %>% write.csv('csv/mtcars5.csv',row.names=F)


data()
write.csv(iris, file='csv/iris1.csv',row.names = F)
write.csv(Titanic, file='csv/titanic1.csv',row.names = F)
write.csv(VIM::sleep, file='csv/sleep1.csv',row.names = F)
write.csv(women, file='csv/women1.csv',row.names = F)
write.csv(AirPassengers, file='csv/airpassengers.csv',row.names = F)


#----datasets---------------
AirPassengers            Monthly Airline Passenger Numbers 1949-1960
BJsales                  Sales Data with Leading Indicator
BJsales.lead (BJsales)   Sales Data with Leading Indicator
BOD                      Biochemical Oxygen Demand
CO2                      Carbon Dioxide Uptake in Grass Plants
ChickWeight              Weight versus age of chicks on different diets
DNase                    Elisa assay of DNase
EuStockMarkets           Daily Closing Prices of Major European Stock Indices, 1991-1998
Formaldehyde             Determination of Formaldehyde
HairEyeColor             Hair and Eye Color of Statistics Students
Harman23.cor             Harman Example 2.3
Harman74.cor             Harman Example 7.4
Indometh                 Pharmacokinetics of Indomethacin
InsectSprays             Effectiveness of Insect Sprays
JohnsonJohnson           Quarterly Earnings per Johnson & Johnson Share
LakeHuron                Level of Lake Huron 1875-1972
LifeCycleSavings         Intercountry Life-Cycle Savings Data
Loblolly                 Growth of Loblolly pine trees
Nile                     Flow of the River Nile
Orange                   Growth of Orange Trees
OrchardSprays            Potency of Orchard Sprays
PlantGrowth              Results from an Experiment on Plant Growth
Puromycin                Reaction Velocity of an Enzymatic Reaction
Seatbelts                Road Casualties in Great Britain 1969-84
Theoph                   Pharmacokinetics of Theophylline
Titanic                  Survival of passengers on the Titanic
ToothGrowth              The Effect of Vitamin C on Tooth Growth in Guinea Pigs
UCBAdmissions            Student Admissions at UC Berkeley
UKDriverDeaths           Road Casualties in Great Britain 1969-84
UKgas                    UK Quarterly Gas Consumption
USAccDeaths              Accidental Deaths in the US 1973-1978
USArrests                Violent Crime Rates by US State
USJudgeRatings           Lawyers Ratings of State Judges in the US  Superior Court
USPersonalExpenditure    Personal Expenditure Data
UScitiesD                Distances Between European Cities and Between USCities
VADeaths                 Death Rates in Virginia (1940)
WWWusage                 Internet Usage per Minute
WorldPhones              The Worlds Telephones
ability.cov              Ability and Intelligence Tests
airmiles                 Passenger Miles on Commercial US Airlines,1937-1960
airquality               New York Air Quality Measurements
anscombe                 Anscombes Quartet of Identical Simple Linear Regressions
attenu                   The Joyner-Boore Attenuation Data
attitude                 The Chatterjee-Price Attitude Data
austres                  Quarterly Time Series of the Number of Australian
                         Residents
beaver1 (beavers)        Body Temperature Series of Two Beavers
beaver2 (beavers)        Body Temperature Series of Two Beavers
cars                     Speed and Stopping Distances of Cars
chickwts                 Chicken Weights by Feed Type
co2                      Mauna Loa Atmospheric CO2 Concentration
crimtab                  Students 3000 Criminals Data
discoveries              Yearly Numbers of Important Discoveries
esoph                    Smoking, Alcohol and (O)esophageal Cancer
euro                     Conversion Rates of Euro Currencies
euro.cross (euro)        Conversion Rates of Euro Currencies
eurodist                 Distances Between European Cities and Between US Cities
faithful                 Old Faithful Geyser Data
fdeaths (UKLungDeaths)   Monthly Deaths from Lung Diseases in the UK
freeny                   Freenys Revenue Data
freeny.x (freeny)        Freenys Revenue Data
freeny.y (freeny)        Freenys Revenue Data
infert                   Infertility after Spontaneous and Induced Abortion
iris                     Edgar Andersons Iris Data
iris3                    Edgar Andersons Iris Data
islands                  Areas of the Worlds Major Landmasses
ldeaths (UKLungDeaths)   Monthly Deaths from Lung Diseases in the UK
lh                       Luteinizing Hormone in Blood Samples
longley                  Longleys Economic Regression Data
lynx                     Annual Canadian Lynx trappings 1821-1934
mdeaths (UKLungDeaths)   Monthly Deaths from Lung Diseases in the UK
morley                   Michelson Speed of Light Data
mtcars                   Motor Trend Car Road Tests
nhtemp                   Average Yearly Temperatures in New Haven
nottem                   Average Monthly Temperatures at Nottingham, 1920-1939
npk                      Classical N, P, K Factorial Experiment
occupationalStatus       Occupational Status of Fathers and their Sons
precip                   Annual Precipitation in US Cities
presidents               Quarterly Approval Ratings of US Presidents
pressure                 Vapor Pressure of Mercury as a Function of
                         Temperature
quakes                   Locations of Earthquakes off Fiji
randu                    Random Numbers from Congruential Generator RANDU
rivers                   Lengths of Major North American Rivers
rock                     Measurements on Petroleum Rock Samples
sleep                    Students Sleep Data
stack.loss (stackloss)   Brownlees Stack Loss Plant Data
stack.x (stackloss)      Brownlees Stack Loss Plant Data
stackloss                Brownlees Stack Loss Plant Data
state.abb (state)        US State Facts and Figures
state.area (state)       US State Facts and Figures
state.center (state)     US State Facts and Figures
state.division (state)   US State Facts and Figures
state.name (state)       US State Facts and Figures
state.region (state)     US State Facts and Figures
state.x77 (state)        US State Facts and Figures
sunspot.month            Monthly Sunspot Data, from 1749 to Present
sunspot.year             Yearly Sunspot Data, 1700-1988
sunspots                 Monthly Sunspot Numbers, 1749-1983
swiss                    Swiss Fertility and Socioeconomic Indicators(1888) Data
treering                 Yearly Treering Data, -6000-1979
trees                    Diameter, Height and Volume for Black Cherry Trees
uspop                    Populations Recorded by the US Census
volcano                  Topographic Information on Aucklands Maunga WhauVolcano
warpbreaks               The Number of Breaks in Yarn during Weaving
women                    Average Heights and Weights for American Women