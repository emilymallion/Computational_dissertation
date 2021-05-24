
averaged_by_10_day_landscapes_normed_fitness50 <- width_1_averaged_by_10_day_landscapes_normed
averaged_by_10_day_landscapes_normed_fitness50 <- averaged_by_10_day_landscapes_normed_fitness50[-c(1), ]

names(averaged_by_10_day_landscapes_normed_fitness50)[names(averaged_by_10_day_landscapes_normed_fitness50) == "V1"] <- "Day_1_to_10"
names(averaged_by_10_day_landscapes_normed_fitness50)[names(averaged_by_10_day_landscapes_normed_fitness50) == "V2"] <- "Day_11_to_20"
names(averaged_by_10_day_landscapes_normed_fitness50)[names(averaged_by_10_day_landscapes_normed_fitness50) == "V3"] <- "Day_21_to_30"
names(averaged_by_10_day_landscapes_normed_fitness50)[names(averaged_by_10_day_landscapes_normed_fitness50) == "V4"] <- "Day_31_to_40"
names(averaged_by_10_day_landscapes_normed_fitness50)[names(averaged_by_10_day_landscapes_normed_fitness50) == "V5"] <- "Day_41_to_50"
names(averaged_by_10_day_landscapes_normed_fitness50)[names(averaged_by_10_day_landscapes_normed_fitness50) == "V6"] <- "Day_51_to_60"
names(averaged_by_10_day_landscapes_normed_fitness50)[names(averaged_by_10_day_landscapes_normed_fitness50) == "V7"] <- "Day_61_to_70"
names(averaged_by_10_day_landscapes_normed_fitness50)[names(averaged_by_10_day_landscapes_normed_fitness50) == "V8"] <- "Day_71_to_80"
names(averaged_by_10_day_landscapes_normed_fitness50)[names(averaged_by_10_day_landscapes_normed_fitness50) == "V9"] <- "Day_81_to_90"

#averaged_by_10_day_landscapes_normed_fitness50 <- averaged_by_10_day_landscapes_normed_muation0.5


x11()
#plot(averaged_by_10_day_landscapes_normed_fitness50$Day_1_to_10, xlab = "Fitness", ylab = "Number of viruses normed", main = "Averaged by 10 day landscapes normed", pch = 20, type = "l")
plot(averaged_by_10_day_landscapes_normed_fitness50$Day_1_to_10, xlim = c(80,100), ylim = c(0, 1), xlab = "Fitness", ylab = "Number of viruses normed", main = "Averaged by 10 day landscapes normed", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed_fitness50$Day_11_to_20, col = "red", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed_fitness50$Day_21_to_30, col = "blue", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed_fitness50$Day_31_to_40, col = "yellow", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed_fitness50$Day_41_to_50, col = "purple", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed_fitness50$Day_51_to_60, col = "brown", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed_fitness50$Day_61_to_70, col = "deeppink", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed_fitness50$Day_71_to_80, col = "green", pch = 20, type = "l")
points(averaged_by_10_day_landscapes_normed_fitness50$Day_81_to_90, col = "darkgoldenrod1", pch = 20, type = "l")

points(averaged_by_10_day_landscapes_normed_fitness50$Day_1_to_10, col = "black", pch = 20)
points(averaged_by_10_day_landscapes_normed_fitness50$Day_11_to_20, col = "red", pch = 20)
points(averaged_by_10_day_landscapes_normed_fitness50$Day_21_to_30, col = "blue", pch = 20)
points(averaged_by_10_day_landscapes_normed_fitness50$Day_31_to_40, col = "yellow", pch = 20)
points(averaged_by_10_day_landscapes_normed_fitness50$Day_41_to_50, col = "purple", pch = 20)
points(averaged_by_10_day_landscapes_normed_fitness50$Day_51_to_60, col = "brown", pch = 20)
points(averaged_by_10_day_landscapes_normed_fitness50$Day_61_to_70, col = "deeppink", pch = 20)
points(averaged_by_10_day_landscapes_normed_fitness50$Day_71_to_80, col = "green", pch = 20)
points(averaged_by_10_day_landscapes_normed_fitness50$Day_81_to_90, col = "darkgoldenrod1", pch = 20)

legend("topleft", inset = 0.01,
       legend = c("Day_1_to_10", "Day_11_to_20", "Day_21_to_30", "Day_31_to_40", "Day_41_to_50", "Day_51_to_60", "Day_61_to_70", "Day_71_to_80", "Day_81_to_90"),
       col = c("black", "red", "blue", "yellow", "purple", "brown","deeppink", "green", "darkgoldenrod1"), pch = 19)

