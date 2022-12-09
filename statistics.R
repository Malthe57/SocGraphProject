df <- read.csv(file.choose())

df$LANDMARK <- factor(df$Importance, 
                      levels = c(1,2,3,4),
                      labels = c("Red", "Orange", "Yellow", "Green"))

library("ggpubr")
ggboxplot(df, x = "Importance", y = "In.degree", color = "Importance", palette = c("red", "orange", "yellow", "green"))



res.aov <- aov(In.degree ~ Importance, data = df)
summary(res.aov)
