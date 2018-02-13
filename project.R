A2010 <- read.csv("BP Apprehensions 2010.csv", header = TRUE, stringsAsFactors = FALSE)
A2017 <- read.csv("PB Apprehensions 2017.csv", header = TRUE, stringsAsFactors = FALSE)
#par(mfrow=c(2,2))

# Compare by sector
yearA <- as.data.frame(matrix(c(rowSums(A2010[,-1])),nrow = 1))

colnames(yearA) <- A2010[,1]

yearB<- as.data.frame(matrix(c(rowSums(A2017[,-1])),nrow = 1))

colnames(yearB) <- A2010[,1]

yearAB <- rbind(yearA, yearB)

row.names(yearAB) <- c("year2010", "year2017")

barplot(as.matrix(yearAB), beside = TRUE, col = c("red", "blue"), bty="n" )

legend("topleft", c("year2010","year2017"), pch=15,  col=c("red","blue"),  bty="n")

#Compare by month
yearA1 <- as.data.frame(matrix(c(colSums(A2010[,-1])),nrow = 1))

colnames(yearA1) <- c(1:12)

yearB1<- as.data.frame(matrix(c(colSums(A2017[,-1])),nrow = 1))

colnames(yearB1) <- c(1:12)

yearAB1 <- rbind(yearA1, yearB1)

row.names(yearAB1) <- c("year2010", "year2017")

barplot(as.matrix(yearAB1), beside = TRUE, col = c("red", "blue"), bty="n" )

legend("topleft", c("year2010","year2017"), pch=15,  col=c("red","blue"),  bty="n")
