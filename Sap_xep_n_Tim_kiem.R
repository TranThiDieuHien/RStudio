setwd("C:\\Users\\DELL\\Downloads")
temp = read.table(file = 'Temperature2.txt', header = TRUE)

##S???p x???p ch???n
selection_sort <- function(x) {
  n <- length(x)
  for (i in 1:(n-1)) {
    for (j in (i + 1):n) {
      if (x[j] < x[i]) {
        temp <- x[i]
        x[i] <- x[i]
        x[j] <- temp
      }
    }
  }
return(x)}

#ki???u d??? quy
selfsort <- function(x){
  if(length(x) > 1){
    min <- which.min(x)
    c(x[min], selfsoft(x[-min]))
  }else x
}

##S???p x???p chèn
insertion_sort <- function(x){
  n <- length(x)
  for (i in 2:n){
    temp <- x[i]
    j = i - 1
    while((x[j]>temp)&&(j>0)){
      x[(j+1)] = x[j]
      j = j - 1
    }
    x[(j+1)] = temp
  }
  
  return(x)
}

tempt <- na.omit(temp$Temperature)   #Xóa na
tempt
insertion_sort(tempt)

##S???p x???p n???i b???t
Bubble_sort <- function(x){
  n <- length(x)
  for (i in n:2){
    j <- 1
    while (j < i){
      if (x[j] > x[j+1]){
        temp <- x[j+1]
        x[j+1] <- x[j]
        x[j] <- temp
      }
      j <- j+1
    }
  }
return(x)}

age <- c(50,62,60,40,48,47,57,70,48,67)
Bubble_sort(age)



