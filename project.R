A2010 <- read.csv(file.choose())
A2017<- read.csv(file.choose())
par(mfrow=c(2,2))

barplot(A2010[1:9,13], 
        names.arg = rownames(A2010)[1:9], 
        las=2,
        axisnames=TRUE,
        main="2010 Border Patrol Apprehensions by Sector",
        border="blue",
        col="yellow")

barplot(A2017[1:9,13], 
        names.arg = rownames(A2017)[1:9], 
        las=2,
        axisnames=TRUE,
        main="2017 Border Patrol Apprehensions by Sector",
        border="blue",
        col="yellow")
rownames(A2010) <- A2010[,1]
A2010[,1]

### outcome 1
A2010 <-  subset(A2010, select= -c(Sector))
rownames(A2010)

A2010 <- rbind(A2010, colSums(A2010))

rownames(A2010)

-length(rownames(A2010))  

rownames(A2010) <- c(rownames(A2010)[-length(rownames(A2010))], "Total")

A2010 <- cbind(A2010,rowSums(A2010))

colnames(A2010) <- c(colnames(A2010)[-length(colnames(A2010))], "Total")

View(A2010)





#see barplot()?
barplot(A2010[1:9,13], names.arg = rownames(A2010)[1:9])

#drill down in barplot doc
barplot(A2010[1:9,13], 
        names.arg = rownames(A2010)[1:9], 
        las=2,
        axisnames=TRUE,
        main="2010 Border Patrol Apprehensions by Sector",
        border="blue",
        col="yellow")
