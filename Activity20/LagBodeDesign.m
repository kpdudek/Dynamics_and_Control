clear; close all; clc;
myopt = bodeoptions();
myopt.Title.String = '';
myopt.FreqUnits = 'Hz';
myopt.XLabel.FontSize = 14;
myopt.YLabel.FontSize = 14;
myopt.TickLabel.FontSize = 14;
myopt.Grid = 'on';

s = tf('s');

figure('Name','No Controller')
G = 5*10^8 / ((s+500)*(s^2 + 2000*s + (12000^2)));

bode(G)
margin(G)



figure('Name','With Controller')

k = 100;
G = k * (5*10^8 / ((s+500)*(s^2 + 2000*s + (12000^2))));
bode(G)
margin(G)

figure('Name','Step With Controller')
G = feedback(G,1);
step(G)


figure('Name','With LAGs K')
k = 142.7 * 100;
G = k * (5*10^8 / ((s+500)*(s^2 + 2000*s + (12000^2))));
bode(G)
margin(G)
myopt = bodeoptions();
myopt.Title.String = '';
myopt.FreqUnits = 'Hz';
myopt.XLabel.FontSize = 14;
myopt.YLabel.FontSize = 14;
myopt.TickLabel.FontSize = 14;
myopt.Grid = 'on';

% figure('Name','With LAGs K')
% k = .072*((.0021)/());
% G = k * (5*10^8 / ((s+500)*(s^2 + 2000*s + (12000^2))));
% bode(G)
% margin(G)
% 
% figure('Name','Step With LAG Controller')
% G = feedback(G,1);
% step(G)