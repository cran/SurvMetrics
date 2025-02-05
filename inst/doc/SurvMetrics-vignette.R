## ----echo=TRUE, message=FALSE, warning=FALSE, results='hide'------------------
#because of the long running time, we save the results within the package
load("SimRes.Rdata")

## ----fig.align='center', message=FALSE, warning=FALSE, results='hide'---------
library(SurvMetrics)
library(caret)
library(randomForestSRC)
library(survival)  
library(pec)
library(ggplot2)
Sys.setenv("OMP_THREAD_LIMIT" = 1)

## ----fig.align='center', warning=FALSE, results='hide'------------------------
ggplot(data_CI, aes(x = model, y = Cindex, fill = model)) +
  geom_boxplot() +
  scale_fill_manual(values = c("#FFBBCC", "#88CCFF"))


## ----fig.align='center', warning=FALSE, results='hide'------------------------
ggplot(data_BS, aes(x = model, y = BS, fill = model)) +
  geom_boxplot() +
  scale_fill_manual(values = c("#FFBBCC", "#88CCFF"))

## ----fig.align='center', warning=FALSE, results='hide'------------------------
ggplot(data_IBS, aes(x = model, y = IBS, fill = model)) +
  geom_boxplot() +
  scale_fill_manual(values = c("#FFBBCC", "#88CCFF"))

## ----fig.align='center', warning=FALSE, results='hide'------------------------
P1 = ggplot(data_IAE, aes(x = model, y = IAE, fill = model)) +
  geom_boxplot() +
  scale_fill_manual(values = c("#FFBBCC", "#88CCFF")) +
  theme(legend.position = 'none')

P2 = ggplot(data_ISE, aes(x = model, y = ISE, fill = model)) +
  geom_boxplot() +
  scale_fill_manual(values = c("#FFBBCC", "#88CCFF")) +
  theme(legend.position = 'none')

library(ggpubr)
ggarrange(P1, P2, ncol = 2)



