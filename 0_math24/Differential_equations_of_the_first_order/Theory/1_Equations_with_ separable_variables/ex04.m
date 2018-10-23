% Find the particular solution of the differential equation 
% x*(y + 2)*y'=log(x) + 1 
% under the condition y(1)=-1

% 1)
% x*(y + 2)*dy/dx=log(x) + 1
% (y+2)*dy=(log(x+1))*dx/x
syms x y
eq1=int(y+2,y)-int((log(x+1))/x,x)
% (y*(y + 4))/2 - dilog(-x) - log(-x)*log(x + 1)


% 2)
% y'=(log(x) + 1)/(x*(y + 2))
syms x y(x)
eqn=diff(y(x))==(log(x) + 1)/(x*(y + 2))
ySol=dsolve(eqn)
%    2^(1/2)*(C2 + (log(x)*(log(x) + 2))/2 + 2)^(1/2) - 2
%  - 2^(1/2)*(C2 + (log(x)*(log(x) + 2))/2 + 2)^(1/2) - 2

% Checking
ySol2=ySol(1)
eq10=x*(y + 2)*diff(y(x))-log(x) - 1
eq11=subs(eq10,y,ySol2)
eq11=simplify(eq11)
% 0