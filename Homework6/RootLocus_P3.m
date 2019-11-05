
s = tf('s');
G = ((s+1)*(s^2+81)) / ((s+13)*s^2*(s^2+100));


figure()
pzmap(G)

figure()
rlocus(G)

rltool(G)

