% Find the general solution of the differential equation 
% (x+y+1)*dx+(4*x+4*y+10)*dy=0

clear
% 1)
% y'=-(x+y+1)/(4*x+4*y+10)
syms x y(x)
eqn=diff(y(x))==-(x+y+1)/(4*x+4*y+10)
ySol=dsolve(eqn)
%                                            - x - 3
% - x - lambertw(0, -2*exp(C11 - (3*x)/2 - 4))/2 - 3

% 2)
% x+y=u
syms x y dx dy
eq1=(x+y+1)*dx+(4*x+4*y+10)*dy
syms u du
y1=u-x
dy1=du-dx
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=expand(eq2)
% 10*du - 9*dx + 4*du*u - 3*dx*u
% du*(10+4*u)-dx*(3*u+9)
% du*(10+4*u)/(3*u+9)-dx=0
eq3=int((10+4*u)/(3*u+9),u)-int(1,x)
% (4*u)/3 - x - (2*log(u + 3))/3
% 4*(x+y)-3*x-2*log(x+y+3)
% 4*y+x-2*log(x+y+3)
% 2*y+x/2-log(x+y+3)=C