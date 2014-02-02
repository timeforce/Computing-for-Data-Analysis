#plot monthly homicide counts

homicides <- readLines("homicides.txt")
r <- regexec("<dd>[Ff]ound on (.*?)</dd>", homicides)
m <- regmatches(homicides, r)
datas <- sapply(m, function(x) x[2])
dates <- as.Date(dates, "B% %d, %Y") # sometimes you need to set system locale first: Sys.setlocale("LC_TIME", lct)
hist(dates, "month", freq = TRUE)
