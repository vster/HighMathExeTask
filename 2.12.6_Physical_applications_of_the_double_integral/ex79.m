% Calculate the polar moment of inertia of the figure
% x/a+y/b=1, x=0,y=0

syms x y a b;
y1=b/a*(a-x)

I0=int(int(x^2+y^2,y,0,y1),x,0,a)
% (a*b*(a^2 + b^2))/12