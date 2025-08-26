setwd("C:\\Users\\Binari Jayasinghe\\Desktop\\IT24100191")

#01
Delivery_Times <- read.table("Exercise - Lab 05.txt",header = TRUE)
View(Delivery_Times)

names(Delivery_Times) <- c("Delivery_Time")
attach(Delivery_Times)

#02
hist(Delivery_Time,breaks = seq(20,70,length = 10),right =FALSE)
abline(h=0)
  
#04
histogram <- hist(Delivery_Time,breaks = seq(20,70,length = 10),right =FALSE)
break_points <- round(histogram$breaks)
freq <- histogram$counts
mid_points <- histogram$mids


cum_freq <- cumsum(freq)
new <- c()
for(i in 1:length(break_points)){
  if(i == 1){
    new[i] = 0
  }else{
    new[i] = cum_freq[i-1]
  }
}
plot(break_points,new,type = 'o',main = "cumulative frequency polygon",
     ylab = "cumulative frequency",xlab="delivery time",ylim = c(0,max(cum_freq)))



  
