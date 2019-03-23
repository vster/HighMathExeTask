clear
syms z a b
f(z)=z/((z-a)*(z-b))

res_a=limit((z-a)*f(z),z,a)
% a/(a - b)
res_b=limit((z-b)*f(z),z,b)
% -b/(a - b)
I=simplify(2*pi*i*(res_a+res_b))
% pi*2i