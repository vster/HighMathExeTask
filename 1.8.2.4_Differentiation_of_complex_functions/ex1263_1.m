syms r x y a b;
u=log(1/r)
phi=sqrt((x-a)^2+(y-b)^2) % r

du1x=cdiffx(u,phi)
% (2*a - 2*x)/(2*((a - x)^2 + (b - y)^2))
du1y=cdiffy(u,phi)
% (2*b - 2*y)/(2*((a - x)^2 + (b - y)^2))

du2x=simplify(diff(du1x,x))
% (2*(a - x)^2)/((a - x)^2 + (b - y)^2)^2 - 1/((a - x)^2 + (b - y)^2)
du2y=simplify(diff(du1y,y))
% (2*(b - y)^2)/((a - x)^2 + (b - y)^2)^2 - 1/((a - x)^2 + (b - y)^2)
eqn=simplify(du2x+du2y)
% 0

function dux=cdiffx(u,phi)
syms r x y 
dur=diff(u,r);
drx=diff(phi,x);
dux=dur*drx;
dux=simplify(subs(dux,r,phi));
end

function duy=cdiffy(u,phi)
syms r x y 
dur=diff(u,r);
dry=diff(phi,y);
duy=dur*dry;
duy=simplify(subs(duy,r,phi));
end



