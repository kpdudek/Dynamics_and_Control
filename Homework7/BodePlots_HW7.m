close all; clear; clc;

s = tf('s');

%% a 
figure('Name','a')
G = 100/(s*(s+1)*(.02*s+1));
bode(G)

myopt = bodeoptions;
myopt.Grid = 'on'; myOpt.FreqUnits = 'Hz';
myopt.XLabel.FontSize = 16; myopt.YLabel.FontSize = 16;
myopt.TickLabel.FontSize = 16;
myopt.Title.String = '';
set(findall(gcf,'Type','line'),'LineWidth',2)
grid on

%% b 
figure('Name','b')
G = ((s+2)*(s+6)) / (s*(s+1)*(s+5)*(s+10));
bode(G)

myopt = bodeoptions;
myopt.Grid = 'on'; myOpt.FreqUnits = 'Hz';
myopt.XLabel.FontSize = 16; myopt.YLabel.FontSize = 16;
myopt.TickLabel.FontSize = 16;
myopt.Title.String = '';
set(findall(gcf,'Type','line'),'LineWidth',2)
grid on

%% c 
figure('Name','c')
G = (s^2 + 4) / (s*(s^2 + 1));
bode(G)

myopt = bodeoptions;
myopt.Grid = 'on'; myOpt.FreqUnits = 'Hz';
myopt.XLabel.FontSize = 16; myopt.YLabel.FontSize = 16;
myopt.TickLabel.FontSize = 16;
myopt.Title.String = '';
set(findall(gcf,'Type','line'),'LineWidth',2)
grid on

%% d 
figure('Name','d')
G = ((s+2)*(s^2+4*s+68)) / (s^2*(s+10)*(s^2+4*s+85));
bode(G)

myopt = bodeoptions;
myopt.Grid = 'on'; myOpt.FreqUnits = 'Hz';
myopt.XLabel.FontSize = 16; myopt.YLabel.FontSize = 16;
myopt.TickLabel.FontSize = 16;
myopt.Title.String = '';
set(findall(gcf,'Type','line'),'LineWidth',2)
grid on

%% e
figure('Name','e')
G = (s+2) / (s*(s-1)*(s^2+12*s+36));
bode(G)


myopt = bodeoptions;
myopt.Grid = 'on'; myOpt.FreqUnits = 'Hz';
myopt.XLabel.FontSize = 16; myopt.YLabel.FontSize = 16;
myopt.TickLabel.FontSize = 16;
myopt.Title.String = '';
set(findall(gcf,'Type','line'),'LineWidth',2)
grid on