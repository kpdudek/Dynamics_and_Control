%%
%=========================================================================
clear all;clc;close all;
s = tf('s');

myopt = bodeoptions();
myopt.Title.String = '';
myopt.FreqUnits = 'Hz';
myopt.XLabel.FontSize = 14;
myopt.YLabel.FontSize = 14;
myopt.TickLabel.FontSize = 14;
myopt.Grid = 'on';

%%
%=========================================================================
% Make the transfer function and Bode plot
G = (s/23.8 + 1)*( (s/400)^2 + (0.13/400)*s + 1)/(s*(s/13.1 + 1)*( (s/150)^2 + (0.22/150)*s + 1)*(s/1000+1));
bode(G,myopt);
set(findall(gcf,'Type','line'),'LineWidth',2)

%%
%=========================================================================
% White-noise based ID
dt = 0.001;
T = 10;

t = 0:dt:(T-dt);
u = 10*randn(length(t),1);
y = lsim(G,u,t);

noisePower = 0.005;
ynoisy = y+noisePower*randn(length(t),1);

%%
%=========================================================================
% Let's compare Bodes
figure(1);clf;
bode(G,myopt);hold on;bode(tf1,myopt); 
set(findall(gcf,'Type','line'),'LineWidth',2)

%%
figure(2);clf;
bode(G,myopt);hold on;bode(tf2,myopt);
set(findall(gcf,'Type','line'),'LineWidth',2)

%%
figure(3);clf;
bode(G,myopt);hold on;bode(tf3,myopt);
set(findall(gcf,'Type','line'),'LineWidth',2)


