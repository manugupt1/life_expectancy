library('Quandl')


health_expenditure_in_years <- Quandl("WORLDBANK/SLE_SH_XPD_PCAP_PP_KD", trim_start="1975-12-31", trim_end="2012-12-31", authcode="ffT8ALix-1Z9XisyY5iB")

names(health_expenditure_in_years)[2]<-"Health_Expenditure"
View(health_expenditure_in_years)
plot(main = "Sierra Leone: Health expenditure per capita, PPP (constant 2005 international $)",x= health_expenditure_in_years$Date,y=health_expenditure_in_years$Health_Expenditure)