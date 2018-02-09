syms x y z a b c
eq1=a*x+b*y+c*z-(a-b);
eq2=b*x+c*y+a*z-(b-c);
eq3=c*x+a*y+b*z-(c-a);
[s_x,s_y,s_z]=solve(eq1,eq2,eq3)