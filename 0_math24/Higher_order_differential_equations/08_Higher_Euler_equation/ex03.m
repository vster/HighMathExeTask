clear
syms x y(x)
eqn=x^3*diff(y,x,3)-2*x^2*diff(y,x,2)+6*x*diff(y,x)-x*(2*log(x)+1)
ySol=simplify(dsolve(eqn))
ySol=simplify(ySol) 
% C29 + (x*(2*log(x) - 1))/10 + C31*x^(5/2)*cos((15^(1/2)*log(x))/2) + C30*x^(5/2)*sin((15^(1/2)*log(x))/2) - (6^(1/2)*x^(5/2)*cos((15^(1/2)*log(x))/2)*int((sin(atan(15^(1/2)/5) + (15^(1/2)*log(x))/2)*(2*log(x) + 1))/x^(5/2), x))/15 + (6^(1/2)*x^(5/2)*sin((15^(1/2)*log(x))/2)*int((cos(atan(15^(1/2)/5) + (15^(1/2)*log(x))/2)*(2*log(x) + 1))/x^(5/2), x))/15

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end