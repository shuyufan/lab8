library(jsonlite)
url <- "https://data.okc.gov/services/portal/api/data/records/school%20district%20boundaries"
schooldata <- fromJSON(url) 
saveRDS(schooldata, file = "data/schoolboundaries.RDS")