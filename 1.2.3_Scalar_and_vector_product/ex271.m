syms a b c;

p=expand((2*a+3*b+4*c)*(5*a+6*b+7*c))

p=subs(p,a*b,1*2*cos(60*pi/180))
p=subs(p,a*c,1*3*cos(60*pi/180))
p=subs(p,b*c,2*3*cos(60*pi/180))
p=subs(p,a,1)
p=subs(p,b,2)
p=subs(p,c,3)