df <- read.csv(file.choose()) #choose df_importance

df$LANDMARK <- factor(df$Importance, 
                      levels = c(1,2,3,4),
                      labels = c("Red", "Orange", "Yellow", "Green"))

library("ggpubr")
ggboxplot(df, x = "Importance", y = "In.degree", color = "Importance", palette = c("red", "orange", "yellow", "green"))



res.aov <- aov(In.degree ~ Importance, data = df)
summary(res.aov)


# degree centrality 
df <- read.csv(file.choose()) #choose df_central

df$LANDMARK <- factor(df$affiliation, 
                      levels = c(1,2),
                      labels = c("Alliance", "Horde"))

library("ggpubr")
ggboxplot(df, x = "affiliation", y = "score", color = "affiliation", palette = c("blue", "red"),ylab="degree centrality")



res.aov <- aov(score ~ affiliation, data = df)
summary(res.aov)

#betweenness centrality
df <- read.csv(file.choose()) #choose df_between

df$LANDMARK <- factor(df$affiliation, 
                      levels = c(1,2),
                      labels = c("Alliance", "Horde"))

library("ggpubr")
ggboxplot(df, x = "affiliation", y = "score", color = "affiliation", palette = c("blue", "red"),ylab="betweenness centrality")



res.aov <- aov(score ~ affiliation, data = df)
summary(res.aov)
