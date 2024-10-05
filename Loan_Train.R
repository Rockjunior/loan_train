library(readxl)
library(ggplot2)
library(dplyr)
library(tidyr)

loan = read.csv("loan_train.csv")
head(loan)
names(loan)
summary(loan)


#Categorical
unique(loan$Dependents )
length(unique(loan$Dependents))
table(loan$Dependents)
prop.table(table(loan$Dependents))
loan %>% count(Dependents) %>%
  mutate(Dependents_Prop = n/sum(n))

#Visuals
#barplot
barplot(table(loan$Dependents))

#Pie
pie(table(loan$Dependents))

#qplot
qplot(x = Dependents, data = loan,geom = 'bar')

