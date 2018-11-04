clear
syms x
f(x)=1/(x^2+sym(pi)^2)

% fplot(f)

F=int(f,x,-inf,inf)
% 1

F2=int(f,x,pi,inf)
% 1/4