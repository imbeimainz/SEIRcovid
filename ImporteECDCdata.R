
library(httr)
library(foreign)
library(data.table)
# #create the URL where the dataset is stored with automatic updates every day
# url <- paste("https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-",
#              format(Sys.time(), "%Y-%m-%d"), ".xlsx", sep = "")
# 
# #download the dataset from the website to a local temporary file
# GET(url, authenticate(":", ":", type="ntlm"), write_disk(tf <- tempfile(fileext = ".xlsx")))
# 
# #read the Dataset sheet into “R”
# data <- read_excel(tf)

dat <- read_excel("COVID-19-geographic-disbtribution-worldwide-2020-03-24.xlsx")
dat[,sum(Cases), by=GeoId]
