% Find a solution to the equation 
% y''+y=1/sqrt(cos(2*x))

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+y==1/sqrt(cos(2*x))
ySol=simplify(dsolve(eqn))
% C12*cos(x) + C13*sin(x) + (2^(1/2)*log(2^(1/2)*cos(x) + cos(2*x)^(1/2))*cos(x))/2 + (2^(1/2)*asin(2^(1/2)*sin(x))*sin(x))/2

% Checking
eqn10=diff(y,x,2)+y-1/sqrt(cos(2*x))
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0