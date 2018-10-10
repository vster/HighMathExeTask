% (1+y'^2)^(3/2)/y''=(y*sqrt(1+y'^)^3
% y''*y^3=1

syms x y(x)
eqn=diff(y,x,2)*y^3==1
ySol=dsolve(eqn)
% (2^(1/2)*(2*C2^3*C5^2 + 4*2^(1/2)*C2^3*C5*x + 4*C2^3*x^2 + C2)^(1/2))/(2*C2)
% (2^(1/2)*(2*C2^3*C8^2 - 4*2^(1/2)*C2^3*C8*x + 4*C2^3*x^2 + C2)^(1/2))/(2*C2)
 

% Checking
eqn10=diff(y,x,2)*y^3-1
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]