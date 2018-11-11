ksi=[16,17,9,13,21,11,7,7,19,3,17,5,20,18,11,...
     4,6,22,21,15,15,23,19,14,1]

n=25
X=1:5
I=0:5:25
nx=zeros(1,5);
for i=1:25
    for j=1:5
        if I(j)<=(ksi(i)) && (ksi(i))<I(j+1)
            nx(j)=nx(j)+1;
        end
    end
end
disp(nx)
% 3     5     4     8     5
W=nx/n
% 0.1200    0.2000    0.1600    0.3200    0.2000
S=sum(W)
% 1

histogram(ksi,5)
grid