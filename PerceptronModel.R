createweightsvector <- function()
{
  weights <- vector()
  weights<- runif(n = 4, min = 1, max = 10)
  return(weights)
}
createfeaturesvector <- function()
{
  numberofdatapoints =  10
  fs1 <- vector()
  fs2 <- vector()
  fs3 <- vector()
  o1 <- vector()
  
  for(i in 0 : numberofdatapoints/2)
  {
    fs1[i] <-  round(runif(1, 5, 10),digits =2)
    fs2[i]<-  round(runif(1, 4, 8),digits =2)
    fs3[i]<-  round(runif(1, 2, 9),digits =2)
    o1[i] = 0
  }
  for(j in 6 : numberofdatapoints)
  {
    fs1[j] <-  round(runif(1, -1, 3),digits =2)
    fs2[j]<-  round(runif(1, -4, 2),digits =2)
    fs3[j]<-  round(runif(1, -3, 5),digits =2)
    o1[j] = 1
  }

print("FS1 , FS2, FS3, OP")
for(k in 1 : 10)
  {
  m<- c(fs1[k]," , ",fs2[k]," , ",fs3[k]," , ",o1[k])
  print(m)
  }
plot(fs1,pch=16,col="green")
points(fs2,pch=16,col="blue")
points(fs3,pch=19,col="red")

#scatter3D(fs1,fs2,fs3)

}
