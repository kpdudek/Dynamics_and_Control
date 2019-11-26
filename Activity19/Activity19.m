close all;

s = tf('s');

G = ((.317*s+1)/(.0315*s+1)) * (31.6/(s*(1+s/5)*(1+s/20)));


bode(G)
margin(G)