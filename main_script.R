#This script executes all the number processing functions
install.packages("reticulate")
library(reticulate)

#Loading all the functions into memory, add your function here
source("fun_TimoVE9000.R")
reticulate::source_python("pyfun_TimoVE9000/tjbfun.py")

#the input is defined here
data = c(1,2,3,4,5)
print(data)

#R Function by TimoVE9000, print result
data = fun_TimoVE9000(data)
print(data)

#R Function by TimoVE9000, print result
data = fun_TimoVE9000(data)
print (data)

#Python Function by TimoVE9000, print result
data=tjbfun(data)
print(data)








