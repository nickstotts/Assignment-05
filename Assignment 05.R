if (!require("data.table")) install.packages("data.table")
library("data.table")

### Run as a block of text to time #########
header <- read.table("A191RL1Q225SBEA.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("A191RL1Q225SBEA.csv", skip=1, sep=",",
            header=FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)
############################################
