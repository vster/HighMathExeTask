% Calculate integral
% int(A:B)f(z)dz
% where
% f(z)=x^2+y^2*i
% AB: A=1+i, B=2+3i

syms x y real
u=x^2
v=y^2
% int(A:B)f(z)dz=int(A:B)x^2*dx-y^2*dy +i*int(A:B)y^2*dx+x^2*dy

I1=int(x^2,x,1,2)-int(y^2,y,1,3)
% -19/3

% AB
% (y-1)/(3-1)=(x-1)/(2-1) => 
% y=2*x-1
% dy=2*dx

syms x y dx dy
df2=y^2*dx+x^2*dy
df2=simplify(subs(df2,[y,dy],[2*x-1,2*dx]))
% dx*(6*x^2 - 4*x + 1)
I2=int(df2/dx,x,1,2)
% 9
I=I1+i*I2
% - 19/3 + 9i