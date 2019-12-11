close all; clear; clc;

s = tf('s');

G = (.05*(s+25)) / (s^2 * (s^2 + .01*s + 4));
%% plot initial
figure('Name','Bode Initial')
margin(G)

%% Set k
k = .3758;

figure('Name','Bode with k')
margin(k*G)

%% Lead controller

wc = .05; %rad/s
phi = deg2rad(55);

alpha = (1-sin(phi))/(1+sin(phi));
Td = 1/(wc*sqrt(alpha));
lead = (Td*s+1) / (alpha*Td*s+1);

Dc = .002 * lead;

margin(Dc*G)