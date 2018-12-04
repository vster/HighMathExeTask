% Determine the shape of a non-uniform chain line of equal resistance.

% T*cos(alfa)=T0 => T=T0/cos(alfa)
% T*sin(alfa)=int()ro*g*A(s)*ds

% T0/cos(alfa)*sin(alfa)=int()ro*g*A(s)ds => T0*tan(alfa)=ro*g*int()A(s)ds
% Note, that tan(alfa)=dy/dx=y'
% then
% T0*y'=ro*g*int()A(s)ds
% As tension 
% sigma=T/A
% then in right side subs
% A=T/sigma=T0/(sigma*cos(alfa))
% then
% T0*y'=ro*g*int()T0/(sigma*cos(alfa))*ds =>
% y'=ro*g*int()ds/(sigma*cos(alfa))
% y'=(ro*g/sigma)*int()ds/cos(alfa)
% As cos(alfa)=dx/ds
% then
% (1/(ds/dx))*y''=(ro*g/sigma)*ds/dx =>
% y''=(ro*g/sigma)*(ds/dx)^2 =>
% y''=(ro*g/sigma)*(1+(y')^2)
% y'=z
% z'=(ro*g/sigma)*(1+z^2)
syms x ro g sigma 
syms z(x)
eqn=diff(z,x)-(ro*g/sigma)*(1+z^2)
zSol=dsolve(eqn)
% z=tan(C19 + (g*ro*x)/sigma)
% z(x=0)=tan(C19)=0 => C19=0
% z=y'=tan((g*ro*x)/sigma))
y=int(tan((g*ro*x)/sigma),x)
% (sigma*log(tan((g*ro*x)/sigma)^2 + 1))/(2*g*ro)
% Put b=g*ro/sigma
% then
% y=1/(2*b)*log(tan(b*x))^2 + 1)
% y=-1/b*log(cos(b*x))

syms b
y3=-1/b*log(cos(b*x))
for b1=[0.05 0.1 0.2]
    y4=subs(y3,b,b1)
    fplot(y4)
    hold on
    grid on
end
hold off
