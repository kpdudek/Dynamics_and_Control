s = tf('s');

G = 1 / (s*(s+3)*(s+6));

pzmap(G)
figure()
rlocus(G)
rltool(G)