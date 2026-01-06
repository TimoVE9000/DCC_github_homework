# DCC_github_homework
This github page contains the homework for the DCC github workshop part 2


### STEP 1: Clone the repository & create your own branch 
The first step is clone the repository and create your own branch to work on, see the course material for details.
To be able to do this you need to be added as a collaborator: make sure that you have provided us with the correct Github username. 
Remember to make regular small commits 

### STEP 2: Add an R or Python function
Please create a new file which contains a python or R function that takes a vector of 5 integers as an input, processes these 5 integers somehow and then returns a vector of 5 integers.

### STEP 3: Add your function to the main_script.R
Add your function to the list of functions imported into the main script (line 5 onwards). Note that the way to import the function depends on if you used R or Python in the previous step. 

``` r
#Loading all the functions into memory, add your function here
source("fun_TimoVE9000.R")
reticulate::source_python("pyfun_TimoVE9000.py")
```

Now makes sure your function is called in the file main_script.R to process the data object and add its output to the result.

``` r
#R function by USERNAME
data = fun_YOUR_GITHUB_USERNAME(data)
result=rbind (result, data)

```
### STEP 4: Create a merge pull request
Push the final version of the code to your own branch. Next you can go to the github page, switch to your own branch and then create a merge pull request to merge your own branch with main. Congratulations you have succesfully completed the homework! We will review and when possible approve your request (and note that you completed the homework assignment). 



