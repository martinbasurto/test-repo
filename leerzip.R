library(dplyr)
library(nycflights13)
library(tidyr)
library(data.table)
library(ggplot2)

data()
getwd()

BOD
table1
table2
write.csv(table1, file= "ejemplo1")
write.csv(table2, file= "ejemplo2")

? write.csv

path <- "/Users/martin/Desktop/ejemplo"
setwd(path)
archivos <- list.files(path)


object.size(lapply(archivos, read.zip))
sapply(archivos, read.zip)

read.zip(archivos[1])

rm(zipdir)
object.size(table1)+object.size(table2)

rm(obj1)

read.zip <- function(zipfile) {
  zipdir <- tempfile()
  dir.create(zipdir)
  unzip(zipfile, exdir=zipdir)
  file <- list.files(zipdir)
  file <- paste(zipdir, file, sep="/")
  obj1 <-read.csv(file)
  rm(zipdir)
  return(obj1)
  
}

