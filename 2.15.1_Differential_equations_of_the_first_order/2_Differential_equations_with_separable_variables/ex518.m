% Solve equation
% exp(1+x^2)*tan(y)*dx-exp(2*x)/(x-1)*dy=0
% y(1)=pi/2

syms x y dx dy;
eq1=exp(1+x^2)*tan(y)*dx-exp(2*x)/(x-1)*dy
pretty(eq1)
eq1=exp((x-1)^2)*(x-1)*dx - dy/tan(y)
eq2=int(exp((x-1)^2)*(x-1),x)-int(1/tan(y),y)
pretty(eq2)
eq2=log((tan(y)^2 + 1)/tan(y)^2)+exp((x - 1)^2)
syms C;
eq2=-2*log(abs(sin(y)))+exp((x - 1)^2)+C
eq3=subs(eq2,[x y],[1 pi/2])
% C+1 => C=-1
% 2*log(abs(sin(y)))=exp((x - 1)^2)-1
