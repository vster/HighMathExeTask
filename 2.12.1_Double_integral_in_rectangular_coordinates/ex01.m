syms x y e;
f=x*log(y)
% 0<=x<=4
% 1<=y<=e
I1=int(f,y,1,e)
I1=subs(I1,log(e),1)
I2=int(I1,x,0,4)
% 8

