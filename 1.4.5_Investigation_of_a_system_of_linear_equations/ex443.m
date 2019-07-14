clear
A1=[1 -3 2 -1;...
    1 9 6 3;
    1 3 4 1]
ra1=rank(A1)
% 2 
A=A1;
A(:,4)=[]
ra=rank(A)
% 2
if (ra1~=ra)
    display('System incompatible')
else
    display('System compatible')
end

syms x1 x2 x3
eq1=x1-3*x2+2*x3+1
eq2=x1+9*x2+6*x3-3

syms u 
eq1=subs(eq1,x3,u)
eq2=subs(eq2,x3,u)
[x1 x2]=solve([eq1 eq2])
% x1 =
% -3*u
% x2 =
% 1/3 - u/3