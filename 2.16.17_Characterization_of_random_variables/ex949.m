X=[11 12 13 14]
W=[0.4 0.1 0.3 0.2]

F=cumsum(W)

plot(X,F,'-o')
xlim([0 14])
ylim([0 1])
grid