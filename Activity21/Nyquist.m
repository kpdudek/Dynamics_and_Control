close all; clear; clc;

s = tf('s');

G = (100*(s+10)) / (s^2 + .04*s + 400);

bode(G)

figure()
t = [-26.5,55.8,59.6,59.9,39.4,-109,-113,-105];
r = [68.9,51.3,44.4,26.9,11.8,51.2,24.3,12.2];
r = 10.^(r./20);
polarscatter(t,r)


figure()
nyquist(G)