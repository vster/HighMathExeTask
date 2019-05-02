clear
digits(7)
xa=6.5:0.1:7.0
ya=vpa(log10(xa))
% [ 0.8129134, 0.8195439, 0.8260748, 0.8325089, 0.8388491, 0.845098]
X=4:10
Y=vpa(log10(X))
% [ 0.60206, 0.69897, 0.7781513, 0.845098, 0.90309, 0.9542425, 1.0]
n=length(X)
DY=zeros(n-1,n-1)
x=6
h=1

for k=1:n-1
    DY(k,1)=Y(k+1)-Y(k)
end

for j=2:n-1
    for k=1:n-j
            DY(k,j)=DY(k+1,j-1)-DY(k,j-1)
    end
end
% ...