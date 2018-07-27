% Estimate the pressure force acting on the dam, schematically 
% shown in Figure 6 and representing a water reservoir with 
% a width W and a height H

% F = int_int (S) p(r) dS = int_int (S) p*n dS
% p(z)=ro*g*(H-z)

syms x y z real;
syms ro g H W real;
p=ro*g*(H-z)

F=int(int(p,y,0,W),z,0,H)
% (H^2*W*g*ro)/2


