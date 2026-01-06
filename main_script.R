#This script executes all the number processing functions
#install.packages("reticulate")
library(reticulate)

#Loading all the functions into memory, add your function here
source("fun_TimoVE9000.R")
reticulate::source_python("pyfun_TimoVE9000.py")


#dataframe
result=data.frame()


#the input is defined here
data = c(1,2,3,4,5)
result=rbind (result, data)

#R Function by TimoVE9000
data = fun_TimoVE9000(data)
result=rbind (result, data)

#Python Function by TimoVE9000
data=tjbfun2(data)
result=rbind (result, data)







#Plot the results
df=result
jpeg(filename = "result.jpg")
plot(
  NA,
  xlim = c(1, ncol(df)),
  ylim = c(0, nrow(df) - 1),
  xlab = "",
  ylab = "Iteration",
  xaxt = "n",
  yaxt = "n"
)

axis(1, at = 1:ncol(df))
axis(2, at = 0:(nrow(df) - 1), labels = rownames(df))

for (i in seq_len(nrow(df))) {
  text(
    x = 1:ncol(df),
    y = rep(i - 1, ncol(df)),  # first row at y = 0
    labels = as.character(df[i, ]),
    cex = 1.5 
  )
}

dev.off()




