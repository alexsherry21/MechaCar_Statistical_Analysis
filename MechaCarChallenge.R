# Deliverable 1
library(dplyr)
mechacar_mpg <- read.csv('MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_mpg)
summary(model)

# Deliverable 2
suspension_coil <- read.csv('Suspension_Coil.csv', check.names=F, stringsAsFactors=F)
total_summary <- summarize(suspension_coil, 'Mean' = mean(suspension_coil$PSI), 'Median'=median(suspension_coil$PSI), 'Variance'=var(suspension_coil$PSI), 'SD'=sd(suspension_coil$PSI))
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize('Mean' = mean(PSI), 'Median'=median(PSI), 'Variance'=var(PSI), 'SD'=sd(PSI))

# Deliverable 3
t.test(suspension_coil$PSI, mu=1500)
t.test(suspension_coil$PSI[suspension_coil$Manufacturing_Lot=="Lot1"], mu=1500)
t.test(suspension_coil$PSI[suspension_coil$Manufacturing_Lot=="Lot2"], mu=1500)
t.test(suspension_coil$PSI[suspension_coil$Manufacturing_Lot=="Lot3"], mu=1500)