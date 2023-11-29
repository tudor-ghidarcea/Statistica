chaos.gen<-function(iteratii,culoare,forma_folosita){
z<-iteratii
cul<-culoare
forma<-forma_folosita
a <- c(0,10,5,0)
b <- c(0,0,8.66,0)
for (i in 1:z){ 
  var <- sample(3)
  if (var[1]==1){
    a <- c(a, (a[length(a)] + 0)/2)
    b <- c(b, (b[length(b)] + 0)/2)
  }
  if (var[1]==2){
    a <- c(a, (a[length(a)] + 10)/2) 
    b <- c(b, (b[length(b)] + 0)/2)
  }
  if (var[1]==3){
    a <- c(a, (a[length(a)] + 5)/2) 
    b <- c(b, (b[length(b)] + 8.6)/2)
  }
}
if(cul=="Rosu")
{cul="red";}
if(cul=="Verde")
{cul="green";}
if(cul=="Portocaliu")
{cul="orange";}
if(cul=="Mov")
{cul="purple";}

if(forma=="Triunghi")
{forma=25;}
if(forma=="Patrat")
{forma=0;}
if(forma=="Cerc")
{forma=1;}
if(forma=="Stea")
{forma=8;}
if(forma=="Cruce")
{forma=4;}



par(bg='black',mar=rep(0,4))
plot(a,b, pch=forma,col=cul,cex=1/2)
}


