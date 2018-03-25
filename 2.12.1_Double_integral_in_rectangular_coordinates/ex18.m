 syms x y e;
 % y=0..log(x)
 % x=1..e
 I=int(int(f,y,0,log(x)),x,1,e)
 
 ezplot(log(x))
 
 % x=exp(y)
 
 IR=int(int(f,x,exp(y),e),y,0,1)