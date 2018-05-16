syms a b;

% Scalar product of vectors
p=expand((3*a-2*b)*(5*a-6*b))

p=subs(p,a*b,4*6*cos(60*pi/180))
p=subs(p,a,4)
p=subs(p,b,6)