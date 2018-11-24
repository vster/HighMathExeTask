syms x y dx dy;
u=y/x
d2u=diff(u,x,2)*dx^2+2*diff(u,x,y)*dx*dy+diff(u,y,2)*dy^2
d2u=simplify(d2u)
% -(2*dx*(dy*x - dx*y))/x^3
d3u=diff(u,x,3)*dx^3+3*diff(u,x,x,y)*dx^2*dy+3*diff(u,x,y,y)*dx*dy^2+diff(u,x,3)*dy^3
d3u=simplify(d3u)
% -(6*(y*dx^3 - x*dx^2*dy + y*dy^3))/x^4
du=simplify(diff(u,x)*dx+diff(u,y)*dy)
d2u=simplify(diff(du,x)*dx+diff(du,y)*dy)
d3u=simplify(diff(d2u,x)*dx+diff(d2u,y)*dy)
% (6*dx^2*(dy*x - dx*y))/x^4
du=u
for n=1:3
    du=simplify(diff(du,x)*dx+diff(du,y)*dy)
end
% (6*dx^2*(dy*x - dx*y))/x^4
expand(du)
% (6*dx^2*dy)/x^3 - (6*dx^3*y)/x^4