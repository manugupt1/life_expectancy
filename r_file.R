csv = read.csv(file="dataset_2.csv")

csv_sl = csv[csv$Country=="Sierra Leone",]
csv_sl.lm = lm(Life.Expectancy~War+Health.Expenditure+I(Improved.Water.Sources*Improved.Sanitation)+Percentage.of.People.Undernourished, data=csv_sl)
summary(csv_sl.lm)
newdata = data.frame(War=0,Health.Expenditure=122.3210644,Percentage.of.People.Undernourished=39.9,Improved.Water.Sources=50.4,Improved.Sanitation=12.2)
predict(csv_sl.lm,newdata)

csv_chad = csv[csv$Country=="Chad",]
csv_chad.lm = lm(Life.Expectancy~War+Health.Expenditure+I(Improved.Water.Sources*Improved.Sanitation)+Percentage.of.People.Undernourished, data=csv_chad)
summary(csv_chad.lm)
newdata = data.frame(War=0,Health.Expenditure=58.53,Percentage.of.People.Undernourished=37.9,Improved.Water.Sources=46.7,Improved.Sanitation=10.4)
predict(csv_chad.lm,newdata)

csv_senegal = csv[csv$Country=="Senegal",]
csv_senegal.lm = lm(Life.Expectancy~War+Health.Expenditure+I(Improved.Water.Sources*Improved.Sanitation)+Percentage.of.People.Undernourished, data=csv_senegal)
summary(csv_senegal.lm)

csv.lm = lm(Life.Expectancy~Country+War+Health.Expenditure+I(Improved.Water.Sources*Improved.Sanitation)+Percentage.of.People.Undernourished, data=csv)
summary(csv.lm)
