data.path <- "/home/fgregg/academic/cluster_trajectories/nhgis0001_csv/"

selectCook <- function(x, string) {
 return(x[grepl(string, x$AREANAME),])
}

# 1930 Data
data.1930 <- read.csv(paste(data.path,
                            "nhgis0002_ds58_1930_tract.csv",
                            sep=''))

# 1940 Data
data.1940 <- read.csv(paste(data.path,
                            "nhgis0002_ds76_1940_tract.csv", 
                            sep=''))
data.1940 <- selectCook(data.1940, "IN CHICAGO IL$")


# 1950 Data
data.1950 <- read.csv(paste(data.path,
                            "nhgis0002_ds82_1950_tract.csv",
                            sep=''))
data.1950 <- selectCook(data.1950, "IN CHICAGO IL$")

# 1960 Data
data.1960 <- read.csv(paste(data.path,
                            "nhgis0002_ds92_1960_tract.csv",
                            sep=''))
data.1960 <- selectCook(data.1960, "  CHICAGO CITY$")

data.1970 <- read.csv(paste(data.path,
                            "nhgis0002_ds98_1970_tract.csv",
                            sep=''))
data.1970 <- data.1970[data.1970$County == "Cook",]


# http://www.disc.wisc.edu/archive/centrac/centrac_data/CENTRAC.PDF
tract.changes.1960 <- list('21' = c('21', '25'),
                           '49' = c('49', '50'),
                           '141' = c('141', '142', '143', '144'),
                           '147' = c('147', '148'),
                           '155' = c('155', '156'),
                           '157' = c('157', '165'),
                           '168' = c('168', '169'),
                           '175' = c('175', '180', '181'),
                           '179' = c('179', '191'),
                           '206' = c('206', '211'),
                           '305' = c('305', '297'),
                           '318' = c('318', '319'),
                           '341' = c('341', '342'),
                           '348' = c('348', '349', '353'),
                           '355' = c('355', '356', '353'),
                           '375' = c('375', '374', '388', '390'),
                           '376' = c('376', '387'),
                           '377' = c('377', '386'),
                           '378' = c('378', '385'),
                           '384' = c('384', '389', '398', '410', '411'),
                           '399' = c('399', '400', '404'),
                           '401' = c('401', '393', '397', '405',
                             '406', '425', '426', '427'),
                           '421' = c('409', '430', '421'),
                           '423' = c('423', '424'),
                           '431' = c('431', '394', '396', '402'),
                           '434' = c('434', '433'),
                           '438' = c('437', '439', '438'),
                           '442' = c('442', '443'))

                   


nrow(data.1930)
nrow(data.1940)
nrow(data.1950)
nrow(data.1960)
nrow(data.1970)

setdiff(data.1940$TRACTA, data.1930$TRACTA)
setdiff(data.1950$TRACTA, data.1940$TRACTA)
setdiff(data.1960$TRACTA, data.1950$TRACTA)
setdiff(data.1970$TRACTA, data.1960$TRACTA)

setdiff(data.1930$TRACTA, data.1940$TRACTA)
setdiff(data.1940$TRACTA, data.1950$TRACTA)
setdiff(data.1950$TRACTA, data.1960$TRACTA)
setdiff(data.1960$TRACTA, data.1970$TRACTA)

#common <- merge(data.1930[, c("TRACTA", "BHI001")],
#                data.1940[, c("TRACTA", "BUB001")],
#                by="TRACTA")
