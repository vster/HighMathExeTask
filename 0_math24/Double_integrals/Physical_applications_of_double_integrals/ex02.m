% Calculate the moments of inertia of a triangle bounded by straight lines
% x+y=1,x=0,y=0
% and having a density ro(x,y)=x*y

syms x y;
ro=x*y
Ix=int(int(y^2*ro,y,0,1-x),x,0,1)
% 1/120 - ? (не совп с ответом 49/120 (?))
Iy=int(int(x^2*ro,y,0,1-x),x,0,1)
% 1/120