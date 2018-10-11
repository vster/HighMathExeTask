% Solve equation
% y''=y'*exp(y)
% y(0)=0,y'(0)=1

% 1)
clear
syms x y(x) a
eqn=diff(y,x,2)==diff(y,x)*exp(y)
Dy(x)=diff(y,x)
cond=[y(0)==0,Dy(0)==1]
ySol=simplify(dsolve(eqn))
%                                 C37
% log(C37/(exp(-C37*(C39 + x)) - 1))

% Checking
eqn10=diff(y,x,2)-diff(y,x)*exp(y)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]

ySol2=-log(1-x)
chk2=simplify(subs(eqn10,y(x),ySol2))
% 0