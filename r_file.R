library('Quandl')

auth_code <- read.table(file="GitHub/life_expectancy/auth_code.R")
Quandl.auth(2oDc_ujzjRX8_QV_nfFJ)

health_expenditure <- Quandl("WORLDBANK/SLE_SH_XPD_PCAP_PP_KD", trim_start="1975-12-31", trim_end="2012-12-31", authcode="ffT8ALix-1Z9XisyY5iB")
names(health_expenditure)[2]<-"Health_Expenditure"
plot(main = "Sierra Leone: Health expenditure per capita, PPP (constant 2005 international $)",x= health_expenditure$Date,y=health_expenditure$Health_Expenditure)

community_health_workers_per_1000 <- Quandl("WORLDBANK/SLE_SH_MED_CMHW_P3", trim_start="1975-12-31", trim_end="2010-12-31", authcode="ffT8ALix-1Z9XisyY5iB")
names(community_health_workers_per_1000)[2]<-"Community_Health_Workers_per_1000"
plot(main = "Sierra Leone: Community health workers (per 1,000 people)",x= community_health_workers_per_1000$Date,y=community_health_workers_per_1000$Community_Health_Workers_per_1000)


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

