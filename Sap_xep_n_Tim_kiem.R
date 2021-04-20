setwd("C:\\Users\\DELL\\Downloads")
temp = read.table(file = 'Temperature2.txt', header = TRUE)

##Sap xep chon
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

#Kieu de quy
selfsort <- function(x){
  if(length(x) > 1){
    min <- which.min(x)
    c(x[min], selfsoft(x[-min]))
  }else x
}

##Sap xep chen
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

##Sap xep noi bot
Bubble_sort <- function(x){
  n <- length(x)
  for (i in n:2){
    j <- 1
    while (j < i  ){
      if (x[j] > x[(j+1)]){
        temp <- x[(j+1)]
        x[(j+1)] <- x[j]
        x[j] <- temp
      }
      j <- j+1
    }
  }
return(x)}


age <- c(50,62,60,40,48,47,57,70,48,67)
aa=Bubble_sort(age)
age
aa


#Sap xep noi bot voi sau khi tu dong sap xep xong het
bubble_sort <- function (a){
  i=1
  repeat{
    no_exchange=1
    n= length(a)
    i=i+1
    for (j in n:2) {
      if (a[(j-1)]>a[j]) {
        temp=a[(j-1)]
        a[(j-1)]=a[j]
        a[j]=temp
        no_exchange=0
      }
    }
    
    if( (no_exchange || i==(n-1)) ){ break}
  }
  return(a)
}



##Quick sort 
quick_sort<-function(x)
{
  if(length(x)<=1) return(x)
  i<-x[1]
  j<-x[-1]
  i_less<-quick_sort(j[j<i])
  i_greater<-quick_sort(j[j>=i])
  return(c(i_less,i,i_greater))
}
quick_sort(c(5,4,12,13,3,8,88))

