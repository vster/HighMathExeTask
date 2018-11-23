% Determine the equation of the transition curve of a railway track

% F=m*v^2/R
% Curve 0 -> 1/R
% 1/r=m*s
% 1/R=m*L => m=1/(L*R)
% k=1/r=s/(L*R) => y''/(1+(y')^2)^(3/2)=s/(L*R)
% y'->0, s~x
% y''=x/(L*R)

syms x L R y(x)
eqn=diff(y,x,2)-x/(L*R)
ySol=dsolve(eqn)
% x^3/(6*L*R) + C1*x + C2
% y(x=0)=0, y'(x=0)=0
% y=x^3/(6*L*R)