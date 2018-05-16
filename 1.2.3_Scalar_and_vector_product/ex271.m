syms a b c;
v1=2*a+3*b+4*c
v2=5*a+6*b+7*c

% Scalar product of vectors
p=expand(v1*v2)

p=subs(p,a*b,1*2*cos(60*pi/180))
p=subs(p,a*c,1*3*cos(60*pi/180))
p=subs(p,b*c,2*3*cos(60*pi/180))
p=subs(p,a,1)
p=subs(p,b,2)
p=subs(p,c,3)