% Solve equation
% y'-y/(x*log(x))=x*log(x)
% y(e)=e^2/2

% 1)
clear
syms x e y(x)
eqn=diff(y)-y/(x*log(x))==x*log(x)
cond=y(e)==e^2/2
ySol=simplify(dsolve(eqn,cond))
% (x^2*log(x))/2 + (log(x)*(e^2 - e^2*log(e)))/(2*log(e))
ySol=subs(ySol,log(e),1)
% (x^2*log(x))/2

% Checking
for i=1:1
eqn10=diff(y)-y/(x*log(x))-x*log(x)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0