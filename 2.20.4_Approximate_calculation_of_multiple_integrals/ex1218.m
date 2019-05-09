clear
digits(5)
syms x y
f(x,y)=x*y+3*sqrt(y)
a=0
b=2
c=1
d=9

I1=int(int(f,x,a,b),y,c,d)
% 184

I2=vpa((b-a)*(d-c)/12*(f(a,c)+f(a,d)+f(b,c)+f(b,d)+...
    8*f((a+b)/2,(c+d)/2)))
% 183.55

I3=vpa((b-a)*(d-c)/36*(f(a,c)+f(a,d)+f(b,c)+f(b,d)+...
    +4*(f(a,(c+d)/2)+f(b,(c+d)/2)+f((a+b)/2,c)+f((a+b)/2,d))+...
    +16*f((a+b)/2,(c+d)/2)))
% 183.55