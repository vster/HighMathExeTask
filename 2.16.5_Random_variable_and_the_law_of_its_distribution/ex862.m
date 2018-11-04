clear
x=[10 20 30 40 50]
p=[0.2 0.3 0.35 0.1 0.05]

plot(x,p)

for i=1:5
    P(i)=sum(p(1:i))
end

hold on
plot(x,P)
grid
hold off