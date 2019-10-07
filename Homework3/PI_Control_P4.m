function PI_Control_P4()

s = tf('s');
k = 1.996;
ka = 2;
ki = 3.26;
a = 2;
G = ((ka/(s+a))*k*(1+(ki/s))) / (2+(ki/s));

[y,t] = step(G);
plot(t,y,'LineWidth',2)
set(gca,'FontSize',14)
end