################################################################################
# Day 04 

################################################################################
# Creating external objects

# and now let´s save it
write.table(new.Chelidae, file = "newChelidae.txt", sep = ",")  ## look at it
write.table(new.Chelidae, file = "newChelidae.txt", sep = ",", row.names = F)
write.csv(new.Chelidae, file = "newChelidae.csv", row.names = F)

# how to save a function?
save(good.day, file = "goodday-function.R")
load("goodday-function.R")

################################################################################
# How to save all the objects in the session
save.image("2024-introR.RData")


################################################################################
################################################################################
# Basics of plotting

# now plot both variables, x = norm, y = uni
plot(x = norm.var, y = uni.var)

# Let's put them both in the same dataset
var.data <- data.frame(norm.var, uni.var)
colnames(var.data)
colnames(var.data) <- c("Normal", "Uniform")

# Let's plot again using the dataframe
plot(var.data)

# Let's look at more interesting data
F24.size <- read.csv("./Ferreira_etal-2024/size-meas.csv")
head(F24.size)
attach(F24.size)
plot(JL, SCL)  ## plotting two variables
plot(SCL~JL)  ## a formula y~x
plot(JL, SCL, type = "b")  ## "b" points + lines
plot(JL, SCL, type = "h")  ## "h" histogram-like bars
plot(JL, SCL, type = "n")  ## plot region, but without points

# check different arguments in the plot
plot(JL, SCL, main = "Jaw length vs. Body size", 
     xlab = "Jaw Length (JL)",
     ylab = "Straight Carapace Length (SCL)", 
     sub = "Allometric variation in the jaws of turtles")

# limit plotting area
plot(JL, SCL, main = "Jaw length vs. Body size",
     xlab = "Jaw Length (JL)", 
     ylab = "Straight Carapace Length (SCL)",
     sub = "Allometric variation in the jaws of turtles",
     xlim = c(10, 100), 
     ylim = c(100, 600)) 

# plot axes should be logarithmized
plot(JL, SCL, main = "Jaw length vs. Body size", 
     xlab = "Log (Jaw Length [JL])",
     ylab = "Log (Straight Carapace Length [SCL])", 
     sub = "Allometric variation in the jaws of turtles",
     log = "xy") 

plot(JL, SCL, main = "Jaw length vs. Body size",
     xlab = "Log (Jaw Length [JL])",
     ylab = "Log (Straight Carapace Length [SCL])", 
     sub = "Allometric variation in the jaws of turtles",
     log = "xy",
     axes = F) 

# check graphical parameters for additional arguments
# bty = box type
plot(JL, SCL, main = "Jaw length vs. Body size",
     xlab = "Log (Jaw Length [JL])",
     ylab = "Log (Straight Carapace Length [SCL])", 
     sub = "Allometric variation in the jaws of turtles",
     log = "xy",
     bty = "l") 

plot(JL, SCL, main = "Jaw length vs. Body size",
     xlab = "Log (Jaw Length [JL])",
     ylab = "Log (Straight Carapace Length [SCL])", 
     sub = "Allometric variation in the jaws of turtles",
     log = "xy",
     bty = "7") 

# cex family = magnification
plot(JL, SCL, main = "Jaw length vs. Body size", 
     xlab = "Log (Jaw Length [JL])",
     ylab = "Log (Straight Carapace Length [SCL])", 
     sub = "Allometric variation in the jaws of turtles",
     log = "xy",
     bty = "l",
     cex = 2) 

plot(JL, SCL, main = "Jaw length vs. Body size", 
     xlab = "Log (Jaw Length [JL])",
     ylab = "Log (Straight Carapace Length [SCL])", 
     sub = "Allometric variation in the jaws of turtles",
     log = "xy",
     bty = "l",
     cex.main = 1.3,
     cex.sub = 1.3) 

# pch = point types
plot(JL, SCL, main = "Jaw length vs. Body size", 
     xlab = "Log (Jaw Length [JL])",
     ylab = "Log (Straight Carapace Length [SCL])", 
     sub = "Allometric variation in the jaws of turtles",
     log = "xy",
     bty = "l",
     cex.main = 1.3,
     cex.sub = 1.3,
     pch = 22) 

plot(JL, SCL, main = "Jaw length vs. Body size", 
     xlab = "Log (Jaw Length [JL])",
     ylab = "Log (Straight Carapace Length [SCL])", 
     sub = "Allometric variation in the jaws of turtles",
     log = "xy",
     bty = "l",
     cex.main = 1.3,
     cex.sub = 1.3,
     pch = 25) 

plot(JL, SCL, main = "Jaw length vs. Body size", 
     xlab = "Log (Jaw Length [JL])",
     ylab = "Log (Straight Carapace Length [SCL])", 
     sub = "Allometric variation in the jaws of turtles",
     log = "xy",
     bty = "l",
     cex.main = 1.3,
     cex.sub = 1.3,
     pch = 21) 

# col & bg = colors
## 1. using color names
plot(JL, SCL, main = "Jaw length vs. Body size", 
     xlab = "Log (Jaw Length [JL])",
     ylab = "Log (Straight Carapace Length [SCL])", 
     sub = "Allometric variation in the jaws of turtles",
     log = "xy",
     bty = "l",
     cex.main = 1.3,
     cex.sub = 1.3,
     col = "blue",
     bg = "pink") 

plot(JL, SCL, main = "Jaw length vs. Body size", 
     xlab = "Log (Jaw Length [JL])",
     ylab = "Log (Straight Carapace Length [SCL])", 
     sub = "Allometric variation in the jaws of turtles",
     log = "xy",
     bty = "l",
     cex.main = 1.3,
     cex.sub = 1.3,
     pch = 21,
     col = "blue",
     bg = "pink") 

## Using HEX Color Codes
plot(JL, SCL, main = "Jaw length vs. Body size", 
     xlab = "Log (Jaw Length [JL])",
     ylab = "Log (Straight Carapace Length [SCL])", 
     sub = "Allometric variation in the jaws of turtles",
     log = "xy",
     bty = "l",
     cex.main = 1.3,
     cex.sub = 1.3,
     pch = 21,
     col = "#08519c",
     bg = "#fa9fb5")


# Using RGB values
plot(1, 1, pch = 21, cex = 20, 
     bg = rgb(0, 0, 0))  ## a black circle

# let's remove the graph
plot(1, 1, pch = 21, cex = 20, 
     bg = rgb(0, 0, 0),
     axes = F, ylab = "", xlab = "")  ## a black circle

plot(1, 1, pch = 21, cex = 20, 
     axes = F, ylab = "", xlab = "",
     bg = rgb(0, 1, 0))  ## a green circle

plot(1, 1, pch = 21, cex = 20, 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(1, 0, 0))  ## a red circle

plot(1, 1, pch = 21, cex = 20, 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(1, 0, 1))  ## a purple circle

plot(1, 1, pch = 21, cex = 20, 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0.5, 0, 0.5))  ## another purple circle

# a semi-transparent purple circle
plot(1, 1, pch = 21, cex = 20, 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0.5, 0, 0.5, alpha = 0.5))  
points(1,1, pch = 22, cex = 10,
       bg = rgb(0, 1, 0))  ## but now this is on top of it

# let's plot it behind
plot(1, 1, pch = 22, cex = 10, 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  ## another purple circle
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  ## but now this is on top of it
# the function points plots the points in a pre-existing graph
text(1,1, "Test")  ## this is useful to plot the points labels
text(1,1.2, "Test")  ## or any other text the might be relevant
text(1.2,1.2, "Test")

# what about legend?
legend(x = "topleft", 
       legend = c("Green square", "Purple circle"), 
       pch = c(22, 21),
       pt.bg = c(rgb(0, 1, 0), rgb(0.5, 0.5, 0)),
       bty = "n")

################################################################################
# More graphical parameters: par
par(mfrow = c(2,2))

# Plot 1
plot(1, 1, pch = 22, cex = 10, main = "Plot 1", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  

# Plot 2
plot(1, 1, pch = 22, cex = 10, main = "Plot 2", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  


# Plot 3
plot(1, 1, pch = 22, cex = 10, main = "Plot 3", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  
text(1,1, "Test")  
text(1,1.2, "Test")  
text(1.2,1.2, "Test")

# Plot 4
plot(1, 1, pch = 22, cex = 10, main = "Plot 4", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  

text(1,1, "Test")  
text(1,1.2, "Test")  
text(1.2,1.2, "Test")

legend(x = "topleft", 
       legend = c("Green square", "Purple circle"), 
       pch = c(22, 21),
       pt.bg = c(rgb(0, 1, 0), rgb(0.5, 0.5, 0)),
       bty = "n")

# Trying mfcol = changing the order
par(mfcol = c(2,2))

# Plot 1
plot(1, 1, pch = 22, cex = 10, main = "Plot 1", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  

# Plot 2
plot(1, 1, pch = 22, cex = 10, main = "Plot 2", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  


# Plot 3
plot(1, 1, pch = 22, cex = 10, main = "Plot 3", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  
text(1,1, "Test")  
text(1,1.2, "Test")  
text(1.2,1.2, "Test")

# Plot 4
plot(1, 1, pch = 22, cex = 10, main = "Plot 4", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  

text(1,1, "Test")  
text(1,1.2, "Test")  
text(1.2,1.2, "Test")

legend(x = "topleft", 
       legend = c("Green square", "Purple circle"), 
       pch = c(22, 21),
       pt.bg = c(rgb(0, 1, 0), rgb(0.5, 0.5, 0)),
       bty = "n")

# Returning to one plot
par(mfcol = c(1,1))
plot(1, 1, pch = 22, cex = 10,  
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  


################################################################################
# Saving to PDF

################################################################################
# First try
pdf(file = "fourplots_1.pdf", height = 4, width = 4)

par(mfrow = c(2,2))

# Plot 1
plot(1, 1, pch = 22, cex = 10, main = "Plot 1", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  

# Plot 2
plot(1, 1, pch = 22, cex = 10, main = "Plot 2", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  


# Plot 3
plot(1, 1, pch = 22, cex = 10, main = "Plot 3", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  
text(1,1, "Test")  
text(1,1.2, "Test")  
text(1.2,1.2, "Test")

# Plot 4
plot(1, 1, pch = 22, cex = 10, main = "Plot 4", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  

text(1,1, "Test")  
text(1,1.2, "Test")  
text(1.2,1.2, "Test")

legend(x = "topleft", 
       legend = c("Green square", "Purple circle"), 
       pch = c(22, 21),
       pt.bg = c(rgb(0, 1, 0), rgb(0.5, 0.5, 0)),
       bty = "n")

dev.off()


################################################################################
# Second try: adjusting PDF size
pdf(file = "fourplots_2.pdf", height = 11, width = 8)
par(mfrow = c(2,2))

# Plot 1
plot(1, 1, pch = 22, cex = 10, main = "Plot 1", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  

# Plot 2
plot(1, 1, pch = 22, cex = 10, main = "Plot 2", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  


# Plot 3
plot(1, 1, pch = 22, cex = 10, main = "Plot 3", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  
text(1,1, "Test")  
text(1,1.2, "Test")  
text(1.2,1.2, "Test")

# Plot 4
plot(1, 1, pch = 22, cex = 10, main = "Plot 4", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  

text(1,1, "Test")  
text(1,1.2, "Test")  
text(1.2,1.2, "Test")

legend(x = "topleft", 
       legend = c("Green square", "Purple circle"), 
       pch = c(22, 21),
       pt.bg = c(rgb(0, 1, 0), rgb(0.5, 0.5, 0)),
       bty = "n")

dev.off()

################################################################################
# Third try: adjusting plot size
pdf(file = "fourplots_3.pdf", height = 4, width = 4)
par(mfrow = c(2,2), cex = 0.5)

# Plot 1
plot(1, 1, pch = 22, cex = 10, main = "Plot 1", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  

# Plot 2
plot(1, 1, pch = 22, cex = 10, main = "Plot 2", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  


# Plot 3
plot(1, 1, pch = 22, cex = 10, main = "Plot 3", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  
text(1,1, "Test")  
text(1,1.2, "Test")  
text(1.2,1.2, "Test")

# Plot 4
plot(1, 1, pch = 22, cex = 10, main = "Plot 4", 
     axes = F, ylab = "", xlab = "", 
     bg = rgb(0, 1, 0))  
points(1,1, pch = 21, cex = 20,
       bg = rgb(0.5, 0, 0.5, alpha = 0.5))  

text(1,1, "Test")  
text(1,1.2, "Test")  
text(1.2,1.2, "Test")

legend(x = "topleft", 
       legend = c("Green square", "Purple circle"), 
       pch = c(22, 21),
       pt.bg = c(rgb(0, 1, 0), rgb(0.5, 0.5, 0)),
       bty = "n")

dev.off()


################################################################################
################################################################################
# Project 1: skull length and body size relation in turtles
# Problem 1.1: how does SCm increases in relation to SCL in Emydidae & Chelidae? 
F24.size$SCm
F24.size$SCL
# Important points:
## which are the independent and the dependent (response) variables?
## export in PDF and TIF
## I want a two-thirds page width figure for a publication in Palaeontology
## https://www.palass.org/publications/authors <- guidelines
attach(F24.size)

tiff("Emydidae_Chelidae-SCm_SCL.tif", 
     width = 110, 
     height = 70, 
     units = "mm", 
     res = 600)
par(mfrow = c(1,2), cex = 0.5)

# Emydidae
plot(x = SCL, 
     y = SCm, 
     log = "xy", 
     main = "Skull vs. carapace length in Emydidae",
     xlab = "Carapace length (SCL)",
     ylab = "Skull lenght (SCm)", 
     bty = "l",
     cex = 0)

points(x = SCL[which(F24.size$Clade != "Emydidae")], 
       y = SCm[which(F24.size$Clade != "Emydidae")], 
       pch = 16,
       col = rgb(0.5, 0.5, 0.5, 0.5))

points(x = SCL[which(F24.size$Clade == "Emydidae")], 
       y = SCm[which(F24.size$Clade == "Emydidae")], 
       pch = 15,
       cex = 1.3,
       col = rgb(136/255, 86/255, 167/255))

legend(x = "topleft", 
       legend = c("Emydidae", "Other turtles"),
       bty = "n",
       pch = c(15, 16),
       col = c(rgb(136/255, 86/255, 167/255), rgb(0.5, 0.5, 0.5, 0.5)))

# Chelidae
plot(x = SCL, 
     y = SCm, 
     log = "xy", 
     main = "Skull vs. carapace length in Chelidae",
     xlab = "Carapace length (SCL)",
     ylab = "Skull lenght (SCm)", 
     bty = "l",
     cex = 0)

points(x = SCL[which(F24.size$Clade != "Chelidae")], 
       y = SCm[which(F24.size$Clade != "Chelidae")], 
       pch = 16,
       col = rgb(0.5, 0.5, 0.5, 0.5))

points(x = SCL[which(F24.size$Clade == "Chelidae")], 
       y = SCm[which(F24.size$Clade == "Chelidae")], 
       pch = 15,
       cex = 1.3,
       col = rgb(127/255, 191/255, 123/255))

legend(x = "topleft", 
       legend = c("Chelidae", "Other turtles"),
       bty = "n",
       pch = c(15, 16),
       col = c(rgb(127/255, 191/255, 123/255), rgb(0.5, 0.5, 0.5, 0.5)))

dev.off()


# PDF
pdf("Emydidae_Chelidae-SCm_SCL.pdf", 
    width = 4.3, 
    height = 2.76)
par(mfrow = c(1,2), cex = 0.5)

# Emydidae
plot(x = SCL, 
     y = SCm, 
     log = "xy", 
     main = "Skull vs. carapace length in Emydidae",
     xlab = "Carapace length (SCL)",
     ylab = "Skull lenght (SCm)", 
     bty = "l",
     cex = 0)

points(x = SCL[which(F24.size$Clade != "Emydidae")], 
       y = SCm[which(F24.size$Clade != "Emydidae")], 
       pch = 16,
       col = rgb(0.5, 0.5, 0.5, 0.5))

points(x = SCL[which(F24.size$Clade == "Emydidae")], 
       y = SCm[which(F24.size$Clade == "Emydidae")], 
       pch = 15,
       cex = 1.3,
       col = rgb(136/255, 86/255, 167/255))

legend(x = "topleft", 
       legend = c("Emydidae", "Other turtles"),
       bty = "n",
       pch = c(15, 16),
       col = c(rgb(136/255, 86/255, 167/255), rgb(0.5, 0.5, 0.5, 0.5)))

# Chelidae
plot(x = SCL, 
     y = SCm, 
     log = "xy", 
     main = "Skull vs. carapace length in Chelidae",
     xlab = "Carapace length (SCL)",
     ylab = "Skull lenght (SCm)", 
     bty = "l",
     cex = 0)

points(x = SCL[which(F24.size$Clade != "Chelidae")], 
       y = SCm[which(F24.size$Clade != "Chelidae")], 
       pch = 16,
       col = rgb(0.5, 0.5, 0.5, 0.5))

points(x = SCL[which(F24.size$Clade == "Chelidae")], 
       y = SCm[which(F24.size$Clade == "Chelidae")], 
       pch = 15,
       cex = 1.3,
       col = rgb(127/255, 191/255, 123/255))

legend(x = "topleft", 
       legend = c("Chelidae", "Other turtles"),
       bty = "n",
       pch = c(15, 16),
       col = c(rgb(127/255, 191/255, 123/255), rgb(0.5, 0.5, 0.5, 0.5)))

dev.off()

# use dev.off() a second time to remove all par definitions
dev.off()