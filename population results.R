
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V1"] <- "Day_1_to_10"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V2"] <- "Day_11_to_20"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V3"] <- "Day_21_to_30"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V4"] <- "Day_31_to_40"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V5"] <- "Day_41_to_50"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V6"] <- "Day_51_to_60"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V7"] <- "Day_61_to_70"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V8"] <- "Day_71_to_80"
names(averaged_by_10_day_landscapes_normed)[names(averaged_by_10_day_landscapes_normed) == "V9"] <- "Day_81_to_90"







plot(run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$time, )
x11()
plot(run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$time, ylim = c(0,100000), pch = 20, type = "l")
plot(run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$time, run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$ncell, col = "blue", pch = 20, type = "l")
points(run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$time, run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$ninf, col = "red", pch = 20, type = "l")
points(run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$time, run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$nvir, col = "yellow", pch = 20, type = "l")
points(run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$time, run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$nimm, col = "green", pch = 20, type = "l")

plot(run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$time, run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$ncell, col = "blue", pch = 20, type = "l")
plot(run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$time, run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$ninf, col = "red", pch = 20, type = "l")
plot(run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$time, run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$nvir, col = "yellow", pch = 20, type = "l")
plot(run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$time, run_1_populations_wt_fitness_100_mut_rate_0_1_width_5$nimm, col = "green", pch = 20, type = "l")


x11()
plot(`averaged_population_fitness25`$time, `averaged_population_fitness25`$ncell, ylim = c(0, 484508), xlab = "Time", ylab = "Population size", main = "How population sizes change over time", type = "l")
points(`averaged_population_fitness50`$time, `averaged_population_fitness25`$ninf, col= "green", type = "l")
points(`averaged_population_fitness50`$time, `averaged_population_fitness25`$nvir, col= "blue", type = "l")
points(`averaged_population_fitness25`$time, `averaged_population_fitness25`$nimm, col= "red", type = "l")
legend("topright", col = c("black", "green", "blue","red"), legend = c("ncell", "ninf", "nvir", "nimm"), inset = 0.005, pch = 19)

averaged_population <- averaged_population_width1
averaged_population_log <- log(averaged_population[,2:5])
averaged_population_time <- (averaged_population$time)
averaged_population = cbind(averaged_population_time, averaged_population_log)


x11()
#par(mfrow=c(2,2))
plot(`averaged_population`$averaged_population_time, `averaged_population`$ncell, ylim = c(0, 15), xlab = "Time (Days)", ylab = "Population size (logged)", main = "How population sizes change over time", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$ninf, col= "green", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$nvir, col= "blue", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$nimm, col= "red", type = "l")
legend("topright", col = c("black", "green", "blue","red"), legend = c("ncell", "ninf", "nvir", "nimm"), inset = 0.005, pch = 19)


averaged_population <- averaged_population15
#averaged_population$ncell = log10(averaged_population$ncell)
averaged_population$ninf <- replace(averaged_population$ninf, averaged_population$ninf<0, 0)
averaged_population$nvir = replace(averaged_population$nvir, averaged_population$nvir<0, 0)
averaged_population$ncell = replace(averaged_population$ncell, averaged_population$ncell<0, 0)
averaged_population$nimm = replace(averaged_population$nimm, averaged_population$nimm<0, 0)
averaged_population_log <- log(averaged_population[,2:5])
averaged_population_time <- (averaged_population$time)
averaged_population = cbind(averaged_population_time, averaged_population_log)


x11()
par(mfrow=c(2,2))
plot(`averaged_population`$averaged_population_time, `averaged_population`$ncell, ylim = c(0, 15), xlab = "Time (Days)", ylab = "Population size (logged)", main = "How population sizes change over time", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$ninf, col= "green", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$nvir, col= "blue", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$nimm, col= "red", type = "l")
legend("topright", col = c("black", "green", "blue","red"), legend = c("ncell", "ninf", "nvir", "nimm"), inset = 0.005, pch = 19, ncol = 2,
       cex = 0.75)

averaged_population <- averaged_population_fitness25
#averaged_population$ncell = log10(averaged_population$ncell)
averaged_population$ninf <- replace(averaged_population$ninf, averaged_population$ninf<0, 0)
averaged_population$nvir = replace(averaged_population$nvir, averaged_population$nvir<0, 0)
averaged_population$ncell = replace(averaged_population$ncell, averaged_population$ncell<0, 0)
averaged_population$nimm = replace(averaged_population$nimm, averaged_population$nimm<0, 0)
averaged_population_log <- log(averaged_population[,2:5])
averaged_population_time <- (averaged_population$time)
averaged_population = cbind(averaged_population_time, averaged_population_log)
plot(`averaged_population`$averaged_population_time, `averaged_population`$ncell, ylim = c(0, 15), xlab = "Time (Days)", ylab = "Population size (logged)", main = "How population sizes change over time", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$ninf, col= "green", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$nvir, col= "blue", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$nimm, col= "red", type = "l")
legend("topright", col = c("black", "green", "blue","red"), legend = c("ncell", "ninf", "nvir", "nimm"), inset = 0.005, pch = 19, ncol = 2,
       cex = 0.75)

averaged_population <- averaged_population_fitness50
#averaged_population$ncell = log10(averaged_population$ncell)
averaged_population$ninf <- replace(averaged_population$ninf, averaged_population$ninf<0, 0)
averaged_population$nvir = replace(averaged_population$nvir, averaged_population$nvir<0, 0)
averaged_population$ncell = replace(averaged_population$ncell, averaged_population$ncell<0, 0)
averaged_population$nimm = replace(averaged_population$nimm, averaged_population$nimm<0, 0)
averaged_population_log <- log(averaged_population[,2:5])
averaged_population_time <- (averaged_population$time)
averaged_population = cbind(averaged_population_time, averaged_population_log)
plot(`averaged_population`$averaged_population_time, `averaged_population`$ncell, ylim = c(0, 15), xlab = "Time (Days)", ylab = "Population size (logged)", main = "How population sizes change over time", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$ninf, col= "green", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$nvir, col= "blue", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$nimm, col= "red", type = "l")
legend("topright", col = c("black", "green", "blue","red"), legend = c("ncell", "ninf", "nvir", "nimm"), inset = 0.005, pch = 19, ncol = 2,
       cex = 0.75)

averaged_population <- averaged_population100
#averaged_population$ncell = log10(averaged_population$ncell)
averaged_population$ninf <- replace(averaged_population$ninf, averaged_population$ninf<0, 0)
averaged_population$nvir = replace(averaged_population$nvir, averaged_population$nvir<0, 0)
averaged_population$ncell = replace(averaged_population$ncell, averaged_population$ncell<0, 0)
averaged_population$nimm = replace(averaged_population$nimm, averaged_population$nimm<0, 0)
averaged_population_log <- log(averaged_population[,2:5])
averaged_population_time <- (averaged_population$time)
averaged_population = cbind(averaged_population_time, averaged_population_log)
plot(`averaged_population`$averaged_population_time, `averaged_population`$ncell, ylim = c(0, 15), xlab = "Time (Days)", ylab = "Population size (logged)", main = "How population sizes change over time", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$ninf, col= "green", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$nvir, col= "blue", type = "l")
points(`averaged_population`$averaged_population_time, `averaged_population`$nimm, col= "red", type = "l")
legend("topright", col = c("black", "green", "blue","red"), legend = c("ncell", "ninf", "nvir", "nimm"), inset = 0.005, pch = 19, ncol = 2,
       cex = 0.75)
