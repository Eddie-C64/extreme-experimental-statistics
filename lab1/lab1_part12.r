y = sample(-5:5, 5)
for(i in 1:5){
  if(y[i] > 0){
    cat(sprintf("%d is a positive number.\n", y[i]))
    
  }else if(y[i] < 0){
    cat(sprintf("%d is a negative number.\n", y[i]))
  
  }else{
    cat(sprintf("%d is zero.\n", y[i]))
    
  }
  
  
}