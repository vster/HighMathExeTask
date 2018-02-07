syms x y alpha
[sol_x,sol_y] = solve(x*cos(alpha)-y*sin(alpha)==cos(2*alpha),...
                      x*sin(alpha)+y*cos(alpha)==sin(2*alpha))
sol_x=simplify(sol_x)
sol_y=simplify(sol_y)

eq1=x*cos(alpha)-y*sin(alpha)-cos(2*alpha)
eq2=x*sin(alpha)+y*cos(alpha)-sin(2*alpha)
[sol_x,sol_y] = solve(eq1,eq2)
sol_x=simplify(sol_x)
sol_y=simplify(sol_y)