
## 1) Trees

## Fitting Entire Model

data <- read.csv("C:/University at Buffalo/Semester 2/Optimization methods in machine learning/Project 1/Majority Vote.csv")
nrow(data)
ncol(data)
summary(data)
fit_trees <- lm(data$Trees ~ data$Feature_1+data$Feature_2+data$Feature_3+data$Feature_4+data$Feature_5+data$Feature_6+data$Feature_7+data$Feature_8+data$Feature_9+data$Feature_10+data$Feature_11+data$Feature_12+data$Feature_13+data$Feature_14+data$Feature_15+data$Feature_16+data$Feature_17+data$Feature_18+data$Feature_19+data$Feature_20+data$Feature_21+data$Feature_22+data$Feature_23+data$Feature_24+data$Feature_25+data$Feature_26+data$Feature_27+data$Feature_28+data$Feature_29+data$Feature_30+data$Feature_31+data$Feature_32+data$Feature_33+data$Feature_34+data$Feature_35+data$Feature_36+data$Feature_37+data$Feature_38+data$Feature_39+data$Feature_40+data$Feature_41+data$Feature_42+data$Feature_43+data$Feature_44+data$Feature_45+data$Feature_46+data$Feature_47+data$Feature_48+data$Feature_49+data$Feature_50+data$Feature_51+data$Feature_52+data$Feature_53+data$Feature_54+data$Feature_55+data$Feature_56+data$Feature_57+data$Feature_58+data$Feature_59+data$Feature_60+data$Feature_61+data$Feature_62+data$Feature_63+data$Feature_64+data$Feature_65+data$Feature_66+data$Feature_67+data$Feature_68+data$Feature_69+data$Feature_70+data$Feature_71+data$Feature_72+data$Feature_73+data$Feature_74+data$Feature_75+data$Feature_76+data$Feature_77+data$Feature_78+data$Feature_79+data$Feature_80+data$Feature_81+data$Feature_82+data$Feature_83+data$Feature_84+data$Feature_85+data$Feature_86+data$Feature_87+data$Feature_88+data$Feature_89+data$Feature_90+data$Feature_91+data$Feature_92+data$Feature_93+data$Feature_94+data$Feature_95+data$Feature_96+data$Feature_97+data$Feature_98+data$Feature_99+data$Feature_100)
summary(fit_trees)
fitted.values(fit_trees)
residuals(fit_trees)
coefficients(fit_trees)

#Train and Test
train.rows<-sample(nrow(data),80);
train.set<-data[train.rows,]
test.set<-data[-train.rows,]
test.set<-data[-train.rows,]
fit_trainset<-lm(data$Trees ~ data$Feature_1+data$Feature_2+data$Feature_3+data$Feature_4+data$Feature_5+data$Feature_6+data$Feature_7+data$Feature_8+data$Feature_9+data$Feature_10+data$Feature_11+data$Feature_12+data$Feature_13+data$Feature_14+data$Feature_15+data$Feature_16+data$Feature_17+data$Feature_18+data$Feature_19+data$Feature_20+data$Feature_21+data$Feature_22+data$Feature_23+data$Feature_24+data$Feature_25+data$Feature_26+data$Feature_27+data$Feature_28+data$Feature_29+data$Feature_30+data$Feature_31+data$Feature_32+data$Feature_33+data$Feature_34+data$Feature_35+data$Feature_36+data$Feature_37+data$Feature_38+data$Feature_39+data$Feature_40+data$Feature_41+data$Feature_42+data$Feature_43+data$Feature_44+data$Feature_45+data$Feature_46+data$Feature_47+data$Feature_48+data$Feature_49+data$Feature_50+data$Feature_51+data$Feature_52+data$Feature_53+data$Feature_54+data$Feature_55+data$Feature_56+data$Feature_57+data$Feature_58+data$Feature_59+data$Feature_60+data$Feature_61+data$Feature_62+data$Feature_63+data$Feature_64+data$Feature_65+data$Feature_66+data$Feature_67+data$Feature_68+data$Feature_69+data$Feature_70+data$Feature_71+data$Feature_72+data$Feature_73+data$Feature_74+data$Feature_75+data$Feature_76+data$Feature_77+data$Feature_78+data$Feature_79+data$Feature_80+data$Feature_81+data$Feature_82+data$Feature_83+data$Feature_84+data$Feature_85+data$Feature_86+data$Feature_87+data$Feature_88+data$Feature_89+data$Feature_90+data$Feature_91+data$Feature_92+data$Feature_93+data$Feature_94+data$Feature_95+data$Feature_96+data$Feature_97+data$Feature_98+data$Feature_99+data$Feature_100,data=train.set)

summary(fit_trainset)
fitted.values(fit_trainset)
residuals(fit_trainset)
coefficients(fit_trainset)

pred_value <- predict.lm(fit_trainset,test.set)

install.packages("Metrics")
library(Metrics)

mse(data$Trees,predict(fit_trees,data))


## 2 Animals

## Fitting Entire Model

data <- read.csv("C:/University at Buffalo/Semester 2/Optimization methods in machine learning/Project 1/Majority Vote.csv")
nrow(data)
ncol(data)
summary(data)
fit_animals <- lm(data$Animal ~ data$Feature_1+data$Feature_2+data$Feature_3+data$Feature_4+data$Feature_5+data$Feature_6+data$Feature_7+data$Feature_8+data$Feature_9+data$Feature_10+data$Feature_11+data$Feature_12+data$Feature_13+data$Feature_14+data$Feature_15+data$Feature_16+data$Feature_17+data$Feature_18+data$Feature_19+data$Feature_20+data$Feature_21+data$Feature_22+data$Feature_23+data$Feature_24+data$Feature_25+data$Feature_26+data$Feature_27+data$Feature_28+data$Feature_29+data$Feature_30+data$Feature_31+data$Feature_32+data$Feature_33+data$Feature_34+data$Feature_35+data$Feature_36+data$Feature_37+data$Feature_38+data$Feature_39+data$Feature_40+data$Feature_41+data$Feature_42+data$Feature_43+data$Feature_44+data$Feature_45+data$Feature_46+data$Feature_47+data$Feature_48+data$Feature_49+data$Feature_50+data$Feature_51+data$Feature_52+data$Feature_53+data$Feature_54+data$Feature_55+data$Feature_56+data$Feature_57+data$Feature_58+data$Feature_59+data$Feature_60+data$Feature_61+data$Feature_62+data$Feature_63+data$Feature_64+data$Feature_65+data$Feature_66+data$Feature_67+data$Feature_68+data$Feature_69+data$Feature_70+data$Feature_71+data$Feature_72+data$Feature_73+data$Feature_74+data$Feature_75+data$Feature_76+data$Feature_77+data$Feature_78+data$Feature_79+data$Feature_80+data$Feature_81+data$Feature_82+data$Feature_83+data$Feature_84+data$Feature_85+data$Feature_86+data$Feature_87+data$Feature_88+data$Feature_89+data$Feature_90+data$Feature_91+data$Feature_92+data$Feature_93+data$Feature_94+data$Feature_95+data$Feature_96+data$Feature_97+data$Feature_98+data$Feature_99+data$Feature_100)
summary(fit_animals)
fitted.values(fit_animals)
residuals(fit_animals)
coefficients(fit_animals)

#Train and Test
train.rows<-sample(nrow(data),80);
train.set<-data[train.rows,]
test.set<-data[-train.rows,]
test.set<-data[-train.rows,]
fit_trainset<-lm(data$Animal ~ data$Feature_1+data$Feature_2+data$Feature_3+data$Feature_4+data$Feature_5+data$Feature_6+data$Feature_7+data$Feature_8+data$Feature_9+data$Feature_10+data$Feature_11+data$Feature_12+data$Feature_13+data$Feature_14+data$Feature_15+data$Feature_16+data$Feature_17+data$Feature_18+data$Feature_19+data$Feature_20+data$Feature_21+data$Feature_22+data$Feature_23+data$Feature_24+data$Feature_25+data$Feature_26+data$Feature_27+data$Feature_28+data$Feature_29+data$Feature_30+data$Feature_31+data$Feature_32+data$Feature_33+data$Feature_34+data$Feature_35+data$Feature_36+data$Feature_37+data$Feature_38+data$Feature_39+data$Feature_40+data$Feature_41+data$Feature_42+data$Feature_43+data$Feature_44+data$Feature_45+data$Feature_46+data$Feature_47+data$Feature_48+data$Feature_49+data$Feature_50+data$Feature_51+data$Feature_52+data$Feature_53+data$Feature_54+data$Feature_55+data$Feature_56+data$Feature_57+data$Feature_58+data$Feature_59+data$Feature_60+data$Feature_61+data$Feature_62+data$Feature_63+data$Feature_64+data$Feature_65+data$Feature_66+data$Feature_67+data$Feature_68+data$Feature_69+data$Feature_70+data$Feature_71+data$Feature_72+data$Feature_73+data$Feature_74+data$Feature_75+data$Feature_76+data$Feature_77+data$Feature_78+data$Feature_79+data$Feature_80+data$Feature_81+data$Feature_82+data$Feature_83+data$Feature_84+data$Feature_85+data$Feature_86+data$Feature_87+data$Feature_88+data$Feature_89+data$Feature_90+data$Feature_91+data$Feature_92+data$Feature_93+data$Feature_94+data$Feature_95+data$Feature_96+data$Feature_97+data$Feature_98+data$Feature_99+data$Feature_100,data=train.set)

summary(fit_trainset)
fitted.values(fit_trainset)
residuals(fit_trainset)
coefficients(fit_trainset)

pred_value <- predict.lm(fit_trainset,test.set)

mse(data$Animal,predict(fit_animals,data))


## 3 Mythology A2, A3, A5

## Fitting Entire Model

data <- read.csv("C:/University at Buffalo/Semester 2/Optimization methods in machine learning/Project 1/Majority Vote.csv")
nrow(data)
ncol(data)
summary(data)
fit_M1 <- lm(data$Mythology_A2_A3_A5 ~ data$Feature_1+data$Feature_2+data$Feature_3+data$Feature_4+data$Feature_5+data$Feature_6+data$Feature_7+data$Feature_8+data$Feature_9+data$Feature_10+data$Feature_11+data$Feature_12+data$Feature_13+data$Feature_14+data$Feature_15+data$Feature_16+data$Feature_17+data$Feature_18+data$Feature_19+data$Feature_20+data$Feature_21+data$Feature_22+data$Feature_23+data$Feature_24+data$Feature_25+data$Feature_26+data$Feature_27+data$Feature_28+data$Feature_29+data$Feature_30+data$Feature_31+data$Feature_32+data$Feature_33+data$Feature_34+data$Feature_35+data$Feature_36+data$Feature_37+data$Feature_38+data$Feature_39+data$Feature_40+data$Feature_41+data$Feature_42+data$Feature_43+data$Feature_44+data$Feature_45+data$Feature_46+data$Feature_47+data$Feature_48+data$Feature_49+data$Feature_50+data$Feature_51+data$Feature_52+data$Feature_53+data$Feature_54+data$Feature_55+data$Feature_56+data$Feature_57+data$Feature_58+data$Feature_59+data$Feature_60+data$Feature_61+data$Feature_62+data$Feature_63+data$Feature_64+data$Feature_65+data$Feature_66+data$Feature_67+data$Feature_68+data$Feature_69+data$Feature_70+data$Feature_71+data$Feature_72+data$Feature_73+data$Feature_74+data$Feature_75+data$Feature_76+data$Feature_77+data$Feature_78+data$Feature_79+data$Feature_80+data$Feature_81+data$Feature_82+data$Feature_83+data$Feature_84+data$Feature_85+data$Feature_86+data$Feature_87+data$Feature_88+data$Feature_89+data$Feature_90+data$Feature_91+data$Feature_92+data$Feature_93+data$Feature_94+data$Feature_95+data$Feature_96+data$Feature_97+data$Feature_98+data$Feature_99+data$Feature_100)
summary(fit_M1)
fitted.values(fit_M1)
residuals(fit_M1)
coefficients(fit_M1)

#Train and Test
train.rows<-sample(nrow(data),80);
train.set<-data[train.rows,]
test.set<-data[-train.rows,]
test.set<-data[-train.rows,]
fit_trainset<-lm(data$Mythology_A2_A3_A5 ~ data$Feature_1+data$Feature_2+data$Feature_3+data$Feature_4+data$Feature_5+data$Feature_6+data$Feature_7+data$Feature_8+data$Feature_9+data$Feature_10+data$Feature_11+data$Feature_12+data$Feature_13+data$Feature_14+data$Feature_15+data$Feature_16+data$Feature_17+data$Feature_18+data$Feature_19+data$Feature_20+data$Feature_21+data$Feature_22+data$Feature_23+data$Feature_24+data$Feature_25+data$Feature_26+data$Feature_27+data$Feature_28+data$Feature_29+data$Feature_30+data$Feature_31+data$Feature_32+data$Feature_33+data$Feature_34+data$Feature_35+data$Feature_36+data$Feature_37+data$Feature_38+data$Feature_39+data$Feature_40+data$Feature_41+data$Feature_42+data$Feature_43+data$Feature_44+data$Feature_45+data$Feature_46+data$Feature_47+data$Feature_48+data$Feature_49+data$Feature_50+data$Feature_51+data$Feature_52+data$Feature_53+data$Feature_54+data$Feature_55+data$Feature_56+data$Feature_57+data$Feature_58+data$Feature_59+data$Feature_60+data$Feature_61+data$Feature_62+data$Feature_63+data$Feature_64+data$Feature_65+data$Feature_66+data$Feature_67+data$Feature_68+data$Feature_69+data$Feature_70+data$Feature_71+data$Feature_72+data$Feature_73+data$Feature_74+data$Feature_75+data$Feature_76+data$Feature_77+data$Feature_78+data$Feature_79+data$Feature_80+data$Feature_81+data$Feature_82+data$Feature_83+data$Feature_84+data$Feature_85+data$Feature_86+data$Feature_87+data$Feature_88+data$Feature_89+data$Feature_90+data$Feature_91+data$Feature_92+data$Feature_93+data$Feature_94+data$Feature_95+data$Feature_96+data$Feature_97+data$Feature_98+data$Feature_99+data$Feature_100,data=train.set)

summary(fit_trainset)
fitted.values(fit_trainset)
residuals(fit_trainset)
coefficients(fit_trainset)

pred_value <- predict.lm(fit_trainset,test.set)

mse(data$Mythology_A2_A3_A5,predict(fit_M1,data))


## 4 Mythology A6 A7

## Fitting Entire Model

data <- read.csv("C:/University at Buffalo/Semester 2/Optimization methods in machine learning/Project 1/Majority Vote.csv")
nrow(data)
ncol(data)
summary(data)
fit_M2 <- lm(data$Mythology_A6_A7 ~ data$Feature_1+data$Feature_2+data$Feature_3+data$Feature_4+data$Feature_5+data$Feature_6+data$Feature_7+data$Feature_8+data$Feature_9+data$Feature_10+data$Feature_11+data$Feature_12+data$Feature_13+data$Feature_14+data$Feature_15+data$Feature_16+data$Feature_17+data$Feature_18+data$Feature_19+data$Feature_20+data$Feature_21+data$Feature_22+data$Feature_23+data$Feature_24+data$Feature_25+data$Feature_26+data$Feature_27+data$Feature_28+data$Feature_29+data$Feature_30+data$Feature_31+data$Feature_32+data$Feature_33+data$Feature_34+data$Feature_35+data$Feature_36+data$Feature_37+data$Feature_38+data$Feature_39+data$Feature_40+data$Feature_41+data$Feature_42+data$Feature_43+data$Feature_44+data$Feature_45+data$Feature_46+data$Feature_47+data$Feature_48+data$Feature_49+data$Feature_50+data$Feature_51+data$Feature_52+data$Feature_53+data$Feature_54+data$Feature_55+data$Feature_56+data$Feature_57+data$Feature_58+data$Feature_59+data$Feature_60+data$Feature_61+data$Feature_62+data$Feature_63+data$Feature_64+data$Feature_65+data$Feature_66+data$Feature_67+data$Feature_68+data$Feature_69+data$Feature_70+data$Feature_71+data$Feature_72+data$Feature_73+data$Feature_74+data$Feature_75+data$Feature_76+data$Feature_77+data$Feature_78+data$Feature_79+data$Feature_80+data$Feature_81+data$Feature_82+data$Feature_83+data$Feature_84+data$Feature_85+data$Feature_86+data$Feature_87+data$Feature_88+data$Feature_89+data$Feature_90+data$Feature_91+data$Feature_92+data$Feature_93+data$Feature_94+data$Feature_95+data$Feature_96+data$Feature_97+data$Feature_98+data$Feature_99+data$Feature_100)
summary(fit_M2)
fitted.values(fit_M2)
residuals(fit_M2)
coefficients(fit_M2)

#Train and Test
train.rows<-sample(nrow(data),80);
train.set<-data[train.rows,]
test.set<-data[-train.rows,]
test.set<-data[-train.rows,]
fit_trainset<-lm(data$Mythology_A6_A7 ~ data$Feature_1+data$Feature_2+data$Feature_3+data$Feature_4+data$Feature_5+data$Feature_6+data$Feature_7+data$Feature_8+data$Feature_9+data$Feature_10+data$Feature_11+data$Feature_12+data$Feature_13+data$Feature_14+data$Feature_15+data$Feature_16+data$Feature_17+data$Feature_18+data$Feature_19+data$Feature_20+data$Feature_21+data$Feature_22+data$Feature_23+data$Feature_24+data$Feature_25+data$Feature_26+data$Feature_27+data$Feature_28+data$Feature_29+data$Feature_30+data$Feature_31+data$Feature_32+data$Feature_33+data$Feature_34+data$Feature_35+data$Feature_36+data$Feature_37+data$Feature_38+data$Feature_39+data$Feature_40+data$Feature_41+data$Feature_42+data$Feature_43+data$Feature_44+data$Feature_45+data$Feature_46+data$Feature_47+data$Feature_48+data$Feature_49+data$Feature_50+data$Feature_51+data$Feature_52+data$Feature_53+data$Feature_54+data$Feature_55+data$Feature_56+data$Feature_57+data$Feature_58+data$Feature_59+data$Feature_60+data$Feature_61+data$Feature_62+data$Feature_63+data$Feature_64+data$Feature_65+data$Feature_66+data$Feature_67+data$Feature_68+data$Feature_69+data$Feature_70+data$Feature_71+data$Feature_72+data$Feature_73+data$Feature_74+data$Feature_75+data$Feature_76+data$Feature_77+data$Feature_78+data$Feature_79+data$Feature_80+data$Feature_81+data$Feature_82+data$Feature_83+data$Feature_84+data$Feature_85+data$Feature_86+data$Feature_87+data$Feature_88+data$Feature_89+data$Feature_90+data$Feature_91+data$Feature_92+data$Feature_93+data$Feature_94+data$Feature_95+data$Feature_96+data$Feature_97+data$Feature_98+data$Feature_99+data$Feature_100,data=train.set)

summary(fit_trainset)
fitted.values(fit_trainset)
residuals(fit_trainset)
coefficients(fit_trainset)

pred_value <- predict.lm(fit_trainset,test.set)

mse(data$Mythology_A6_A7,predict(fit_M2,data))
