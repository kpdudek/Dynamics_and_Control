close all; clear; clc;
%% 2
s = tf('s');

G = (25*(s+1)) / (s*(s+2)*(s^2+2*s+16));

figure('Name','2')
bode(G)
margin(G)

%% 3
s = tf('s');

K = 1;
G = (K) / (s*(s+1)*((s/5)^2+(.4/5)*s+1));

figure('Name','3a')
bode(G)
margin(G)

figure('Name','3b')
K = 1.115;
G = (K) / (s*(s+1)*((s/5)^2+(.4/5)*s+1));
bode(G)
margin(G)
