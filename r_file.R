csv = read.csv(file="dataset_2.csv")

<<<<<<< HEAD
auth_code <- read.table(file="GitHub/life_expectancy/auth_code.R")
Quandl.auth(2oDc_ujzjRX8_QV_nfFJ)
=======
csv_sl = csv[csv$Country=="Sierra Leone",]
csv_sl.lm = lm(Life.Expectancy~War+Health.Expenditure+I(Improved.Water.Sources*Improved.Sanitation)+Percentage.of.People.Undernourished, data=csv_sl)
summary(csv_sl.lm)
newdata = data.frame(War=0,Health.Expenditure=122.3210644,Percentage.of.People.Undernourished=39.9,Improved.Water.Sources=50.4,Improved.Sanitation=12.2)
predict(csv_sl.lm,newdata)
>>>>>>> FETCH_HEAD

csv_chad = csv[csv$Country=="Chad",]
csv_chad.lm = lm(Life.Expectancy~War+Health.Expenditure+I(Improved.Water.Sources*Improved.Sanitation)+Percentage.of.People.Undernourished, data=csv_chad)
summary(csv_chad.lm)
newdata = data.frame(War=0,Health.Expenditure=58.53,Percentage.of.People.Undernourished=37.9,Improved.Water.Sources=46.7,Improved.Sanitation=10.4)
predict(csv_chad.lm,newdata)

csv_senegal = csv[csv$Country=="Senegal",]
csv_senegal.lm = lm(Life.Expectancy~War+Health.Expenditure+I(Improved.Water.Sources*Improved.Sanitation)+Percentage.of.People.Undernourished, data=csv_senegal)
summary(csv_senegal.lm)

<<<<<<< HEAD

percent_undernourished <- Quandl("WORLDBANK/SLE_SN_ITK_DEFC_ZS", trim_start="1975-12-31", trim_end="2012-12-31")
names(percent_undernourished)[2]<-"Percent_Undernourished"
plot(main = "Sierra Leone: Percentage of People Undernourished",x= percent_undernourished$Date,y=percent_undernourished$Percent_Undernourished)

accesss_to_improved_water_sources <- Quandl("WORLDBANK/SLE_SH_H2O_SAFE_ZS", trim_start="1975-12-31", trim_end="2012-12-31", authcode="ffT8ALix-1Z9XisyY5iB")
names(accesss_to_improved_water_sources)[2]<- "accesss_to_improved_water_sources_percent"
plot(main = "Sierra Leone :mproved water source refers to the percentage of the population with reasonable access to an adequate amount of water from an improved source",x= accesss_to_improved_water_sources$Date,y=accesss_to_improved_water_sources$accesss_to_improved_water_sources_percent)

access_to_improved_sanitation <- Quandl("WORLDBANK/SLE_SH_STA_ACSN", trim_start="1975-12-31", trim_end="2012-12-31", authcode="ffT8ALix-1Z9XisyY5iB")
names(access_to_improved_sanitation)[2]<-"access_to_improved_sanitation_percent"
plot(main="Sierra Leone: Improved sanitation facilities (% of population",x=access_to_improved_sanitation$Date,y=access_to_improved_sanitation$access_to_improved_sanitation_percent)


percent_undernourished <- Quandl("WORLDBANK/SLE_SN_ITK_DEFC_ZS", trim_start="1975-12-31", trim_end="2012-12-31")
names(percent_undernourished)[2]<-"Percent_Undernourished"
plot(main = "Sierra Leone: Percentage of People Undernourished",x= percent_undernourished$Date,y=percent_undernourished$Percent_Undernourished)
Enrollment <- Quandl("UN/UIS_LOWERSECONDARYEDUCATIONENROLMENTINALLPROGRAMMES__ALLGENDERS_SLE" trim_start="2001-12-31", trim_end="2012-12-31" authcode="2oDc_ujzjRX8_QV_nfFJ"
names(number_of_students_enrolled)[2] <- "Students_Enrolled_Lower_Secondary"
plot(main = "Sierra Leone:  Number of Students Enrolled, Lower Secondary", x=Enrollment$date, y=Enrollment$Enrollment)

=======
csv.lm = lm(Life.Expectancy~Country+War+Health.Expenditure+I(Improved.Water.Sources*Improved.Sanitation)+Percentage.of.People.Undernourished, data=csv)
summary(csv.lm)
>>>>>>> FETCH_HEAD
