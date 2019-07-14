clear
A1=[1 5 4 3 1;...
    2 -1 2 -1 0;...
    5 3 8 1 1]
ra1=rank(A1)
% 2
A=A1;
A(:,5)=[]
ra=rank(A)
% 2
if (ra1~=ra)
    display('System incompatible')
else
    display('System compatible')
end

syms x1 x2 x3 x4
eq1=2*x1-x2+2*x3-x4
eq2=5*x1+3*x2+8*x3+x4-1

syms u v
eq1=subs(eq1,[x3 x4],[u v])
eq2=subs(eq2,[x3 x4],[u v])
[x1 x2]=solve([eq1 eq2])
% x1 =
% (2*v)/11 - (14*u)/11 + 1/11
% x2 =
% 2/11 - (7*v)/11 - (6*u)/11
