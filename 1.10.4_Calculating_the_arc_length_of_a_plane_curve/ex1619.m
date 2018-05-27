% Calculate the arc length of a curve
% x=exp(t)*cos(t),y=exp(t)*sin(t),0<=t<=log(pi) 

syms t real;
x=exp(t)*cos(t)
y=exp(t)*sin(t)

ezplot(x,y)

% L = int (t1-t2) sqrt(diff(x)^2+diff(y)^2) dt
dx=diff(x)
dy=diff(y)
c1=dx^2+dy^2
c1=factor(c1)
c1=simplify(c1)
% 2*exp(2*t)

c=sqrt(c1)
% 2^(1/2)*exp(2*t)^(1/2)
c=2^(1/2)*exp(t)

L=int(c,t,sym(0),log(sym(pi)))
% 2^(1/2)*(pi - 1)
vpa(L)
% 3.0287

% Correct answer
% sqrt(2)*(pi-1)