syms x lam;
I=int(atan(lam*sin(x))/sin(x),x,0,pi/2)

f=atan(lam*sin(x))/sin(x)

df=diff(f,lam)

dI=int(df,x,0,pi/2)

I=int(dI,lam)
% (pi*asinh(lam))/2 - ?
% прав. ответ pi/2*log(lam+sqrt(1+lam^2)) - то же самое?!