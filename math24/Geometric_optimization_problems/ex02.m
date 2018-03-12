syms a b h R alfa;

ST=(a+b)*h/2
SK=pi*R^2
S=ST-SK

% h=2*R
S=subs(S,h,2*R)

% a+b=2*l
% a+b=2*2*R/sin(alfa)=4*R/sin(alfa)
S=subs(S,a+b,4*R/sin(alfa))
% (4*R^2)/sin(alfa) - pi*R^2

dS=diff(S)
slv=solve(dS,alfa)
% alfa=pi/2

S_min=subs(S,alfa,slv)
% 4*R^2 - pi*R^2