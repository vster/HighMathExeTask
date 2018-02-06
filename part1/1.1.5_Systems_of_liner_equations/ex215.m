syms x y alpha
[sol_x,sol_y] = solve(x*cos(alpha)-y*sin(alpha)==cos(2*alpha),...
                      x*sin(alpha)+y*cos(alpha)==sin(2*alpha))
sol_x=simplify(sol_x)
sol_y=simplify(sol_y)