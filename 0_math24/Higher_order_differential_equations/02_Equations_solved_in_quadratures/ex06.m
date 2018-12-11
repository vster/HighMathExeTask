clear
syms x y(x)
eqn=diff(y,x,3)*diff(y,x,2)-1
ySol=simplify(dsolve(eqn))
%  C58 + C57*x + (4*2^(1/2)*(C54 + x)^(5/2))/15
%  C56 + C55*x - (4*2^(1/2)*(C54 + x)^(5/2))/15

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end