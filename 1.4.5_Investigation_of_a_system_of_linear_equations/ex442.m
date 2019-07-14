clear
A1=[1 5 4 1;...
    2 10 8 3;...
    3 15 12 5]
ra1=rank(A1)
% 2 
A=A1;
A(:,4)=[]
ra=rank(A)
% 1
if (ra1~=ra)
    display('System incompatible')
else
    display('System compatible')
end