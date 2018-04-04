% x^2/a^2+y^2/b^2=1
% y=0
% z=x/2
% z=x

syms x y a b;
y1=b*sqrt(1-x^2/a^2)

V1=int(int(x/2,y,0,y1),x,0,a)
V2=int(int(x,y,0,y1),x,0,a)

V=2*(V2-V1)
% (a^2*b)/3