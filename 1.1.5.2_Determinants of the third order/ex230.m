syms x y z a b c
eq1=a*x+b*y+(a+b)*z;
eq2=b*x+a*y+(a+b)*z;
eq3=x+y+2*z;
[s_x,s_y,s_z]=solve(eq1,eq2,eq3)