syms x e;
int(log(x)^2/x)
I=int(log(x)^2/x,x,1,e)
I=subs(I,log(e),1)