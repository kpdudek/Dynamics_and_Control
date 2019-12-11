close all; clear; clc;

s = tf('s');

G = 10 / (s*((s/10)+1));

%% plot initial
figure('Name','Bode Initial')
margin(G)

%% With k
k = 10;
figure('Name','With k')
margin(k*G)