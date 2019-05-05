clear
syms x y
f(x,y)=x^2+2*y
a=0
b=4
c=0
d=6

I=int(int(f,y,c,d),x,a,b)
% 272

f(a,c) % 0
f(a,d) % 12
f(b,c) % 16
f(b,d) % 28
f(a,(c+d)/2) % 6
f(b,(c+d)/2) % 22
f((a+b)/2,c) % 4
f((a+b)/2,d) % 16
f((a+b)/2,(c+d)/2) % 10
I1=(b-a)*(d-c)/36*(f(a,c)+f(a,d)+f(b,c)+f(b,d)+...
    +4*(f(a,(c+d)/2)+f(b,(c+d)/2)+f((a+b)/2,c)+f((a+b)/2,d))+...
    +16*f((a+b)/2,(c+d)/2))
% 272