% Find a solution to the equation 
% y''*cos(x/2)+1/4*y*cos(x/2)=1

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)*cos(x/2)+1/4*y*cos(x/2)==1
ySol=simplify(dsolve(eqn))
% C19*cos(x/2) - cos(x/2)*(x*4i - 4*log(exp(x*1i) + 1) + (C18 - x*4i)/(exp(x*1i) + 1))

% Checking
eqn10=diff(y,x,2)*cos(x/2)+1/4*y*cos(x/2)-1
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0