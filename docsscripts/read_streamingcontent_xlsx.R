# reads two datasets from the raw data file streamingcontent.xlsx
# writes the datasets to individual .rds files and an .Rdata file
# original data is in the raw folder, new in the processed folder
library(readxl)


# view the names of the worksheets that are in streamingcontent.xlsx

excel_sheets("dataraw/streamingcontent.xlsx")


# read in the first sheet of streamingcontent.xlsx and name it dplus

dplus <- read_xlsx("dataraw/streamingcontent.xlsx", sheet = 1)


# read in the second sheet of streamingcontent.xlsx and name it strmtv

strmtv <- read_xlsx("dataraw/streamingcontent.xlsx", sheet = 2)


# write the datasets to two .rds files named dplus.rds and strmtv.rds

saveRDS(dplus, "dataprocessed/dplus.rds")
saveRDS(strmtv, "dataprocessed/strmtv.rds")



# write the datasets to an .Rdata file called streamingcontent.Rdata

save(dplus, strmtv, file = "dataprocessed/streamingcontent.Rdata")

