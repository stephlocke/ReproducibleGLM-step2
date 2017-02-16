## ---- makedb
library(DBI)
library(RSQLite)
titanicdb<-dbConnect(SQLite(),dbname="../data-raw/titanic.sqlite")

## ---- writeTitanic
library(PASWR)
dbWriteTable(titanicdb, "titanic", titanic3, overwrite=TRUE)
