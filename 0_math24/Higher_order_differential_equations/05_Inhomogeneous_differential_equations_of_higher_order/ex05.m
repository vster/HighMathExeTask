clear
syms x y(x)
eqn=diff(y,x,3)+diff(y,x)-1/cos(x)
ySol=simplify(dsolve(eqn))
% C16*cos(x) + C17*sin(x) + cos(x)*int(sin(x)*(C15 + log(cos(x)) - log(sin(x) + 1)), x, 'IgnoreSpecialCases', true, 'IgnoreAnalyticConstraints', true) - sin(x)*int(cos(x)*(C15 + log(cos(x)) - log(sin(x) + 1)), x, 'IgnoreSpecialCases', true, 'IgnoreAnalyticConstraints', true)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end