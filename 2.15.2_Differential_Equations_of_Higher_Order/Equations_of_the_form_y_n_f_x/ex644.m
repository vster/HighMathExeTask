% Solve equation
% y''''=cos(x)^2
% y(0)=1/32, y'(0)=0, y''(0)=1/8, y'''(0)=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,4)==cos(x)^2
Dy(x)=diff(y,x)
D2y(x)=diff(y,x,2)
D3y(x)=diff(y,x,3)
cond=[y(0)==1/32,Dy(0)==0,D2y(0)==1/8,D3y(0)==0]
ySol=dsolve(eqn,cond)
% cos(2*x)/32 + x^2/8 + x^4/48

% Checking
eqn10=diff(y,x,4)-cos(x)^2
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0