function PI_Control_P4()

s = tf('s');
k = 5;
ka = 2;
ki = 5;
a = 2;
G = ((ka/(s+a))*k*(1+(ki/s))) / (2+(ki/s));

step(G)
end