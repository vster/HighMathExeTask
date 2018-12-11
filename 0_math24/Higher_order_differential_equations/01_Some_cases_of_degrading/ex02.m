clear
syms x y(x)
eqn=5*diff(y,x,3)^2-3*diff(y,x,2)*diff(y,x,4)
ySol=simplify(dsolve(eqn))
%                                                  C15 + C14*x
%                                    (C13*x^2)/2 + C14*x + C15
%  C15 - (18*(C11 - (2*C9*x)/3)^(1/2) - 2*C9^2*C14*x)/(2*C9^2)

% Checking
for i=1:3
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end