chol <- read.table(url("http://assets.datacamp.com/blog_assets/chol.txt"), header = TRUE)
data <- read.csv("averaged_by_10_day_landscapes.txt", header = FALSE)


hist(averaged_by_day_landscapes$V1)

ggplot2

install.packages("ggplot2")
install.packages("easyGgplot2")

install.packages("devtools")
library(devtools)
install.packages("Rtools")
install_github("easyGgplot2", "kassambara")
library(ggplot2)

Number_of_visuses_normed <- averaged_by_10_day_landscapes_normed

#data

x11()
#plot(Number_of_visuses_normed$Day_1_to_10, xlab = "Fitness", ylab = "Number of viruses normed", main = "Averaged by 10 day landscapes normed", pch = 20, type = "l")
plot(Number_of_visuses_normed$Day_1_to_10, xlim = c(90,101), xlab = "Fitness", ylab = "Number of viruses normed", main = "Averaged by 10 day landscapes normed", pch = 20, type = "l")
points(Number_of_visuses_normed$Day_11_to_20, col = "red", pch = 20, type = "l")
points(Number_of_visuses_normed$Day_21_to_30, col = "yellow", pch = 20, type = "l")
points(Number_of_visuses_normed$Day_31_to_40, col = "pink", pch = 20, type = "l")
points(Number_of_visuses_normed$Day_41_to_50, col = "purple", pch = 20, type = "l")
points(Number_of_visuses_normed$Day_51_to_60, col = "coral1", pch = 20, type = "l")
points(Number_of_visuses_normed$Day_61_to_70, col = "cyan3", pch = 20, type = "l")
points(Number_of_visuses_normed$Day_71_to_80, col = "darkgreen", pch = 20, type = "l")
points(Number_of_visuses_normed$Day_81_to_90, col = "darkgoldenrod1", pch = 20, type = "l")

points(Number_of_visuses_normed$Day_1_to_10, col = "black", pch = 20)
points(Number_of_visuses_normed$Day_11_to_20, col = "red", pch = 20)
points(Number_of_visuses_normed$Day_21_to_30, col = "yellow", pch = 20)
points(Number_of_visuses_normed$Day_31_to_40, col = "pink", pch = 20)
points(Number_of_visuses_normed$Day_41_to_50, col = "purple", pch = 20)
points(Number_of_visuses_normed$Day_51_to_60, col = "coral1", pch = 20)
points(Number_of_visuses_normed$Day_61_to_70, col = "cyan3", pch = 20)
points(Number_of_visuses_normed$Day_71_to_80, col = "darkgreen", pch = 20)
points(Number_of_visuses_normed$Day_81_to_90, col = "darkgoldenrod1", pch = 20)

legend("topleft", inset = 0.01,
       legend = c("Day_1_to_10", "Day_11_to_20", "Day_21_to_30", "Day_31_to_40", "Day_41_to_50", "Day_51_to_60", "Day_61_to_70", "Day_71_to_80", "Day_81_to_90"),
       col = c("black", "red", "yellow", "pink", "purple", "coral1","cyan3", "darkgreen", "darkgoldenrod1"), pch = 19)



x11()
plot(averaged_by_day_landscapes$V1)

x11()
plot(averaged_by_day_landscapes_normed$V1)


names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V1"] <- "Day_1_to_10"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V2"] <- "Day_11_to_20"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V3"] <- "Day_21_to_30"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V4"] <- "Day_31_to_40"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V5"] <- "Day_41_to_50"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V6"] <- "Day_51_to_60"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V7"] <- "Day_61_to_70"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V8"] <- "Day_71_to_80"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V9"] <- "Day_81_to_90"

legend("topleft", inset = 0.01,
       legend = c("Day_1_to_10", "Day_11_to_20", "Day_21_to_30", "Day_31_to_40", "Day_41_to_50", "Day_51_to_60", "Day_61_to_70", "Day_71_to_80", "Day_81_to_90"),
       col = c("black", "red", "yellow", "pink", "purple", "coral1", "cyan3", "darkgreen", "darkgoldenrod1"))

x11()
plot(averaged_by_10_day_landscapes_normed$Day_1_to_10, pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_11_to_20, col = "red", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_21_to_30, col = "yellow", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_31_to_40, col = "pink", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_41_to_50, col = "purple", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_51_to_60, col = "coral1", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_61_to_70, col = "cyan3", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_71_to_80, col = "darkgreen", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_81_to_90, col = "darkgoldenrod1", pch = 20)











x11()
plot(averaged_by_10_day_landscapes_normed$Day_1_to_10, pch = 20, xlim = c(90,101), type = "l")
points(averaged_by_10_day_landscapes_normed$Day_11_to_20, col = "red", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed$Day_21_to_30, col = "yellow", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed$Day_31_to_40, col = "pink", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed$Day_41_to_50, col = "purple", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed$Day_51_to_60, col = "coral1", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed$Day_61_to_70, col = "cyan3", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed$Day_71_to_80, col = "darkgreen", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed$Day_81_to_90, col = "darkgoldenrod1", pch = 20, type = "l")

points(averaged_by_10_day_landscapes_normed$Day_1_to_10, col = "black", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_11_to_20, col = "red", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_21_to_30, col = "yellow", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_31_to_40, col = "pink", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_41_to_50, col = "purple", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_51_to_60, col = "coral1", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_61_to_70, col = "cyan3", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_71_to_80, col = "darkgreen", pch = 20)
points(averaged_by_10_day_landscapes_normed$Day_81_to_90, col = "darkgoldenrod1", pch = 20)

legend("topleft", inset = 0.01,
       legend = c("Day_1_to_10", "Day_11_to_20", "Day_21_to_30", "Day_31_to_40", "Day_41_to_50", "Day_51_to_60", "Day_61_to_70", "Day_71_to_80", "Day_81_to_90"),
       col = c("black", "red", "yellow", "pink", "purple", "coral1", "darkgreen", "darkgoldenrod1"), pch = 19)

