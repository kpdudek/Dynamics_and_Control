%% Setup and load the Piezo Models
clear;clc;close all;
s = tf('s');

C = load('Conservative_PII_PZ.mat');
C2 = load('Conservative_PII_PZ_2.mat');
A = load('Aggressive.mat');
P = load('Plant_5P4Z.mat');
W = load('WierdAggressive.mat','C');
A2 = load('aggro_controller_2.mat');
A3 = load('PID_Notch.mat','C');

model = P.G;

%% Closed loop step response of Plant
CL_P = feedback(model,1);
figure('Name','CL of Plant')
step(CL_P)

%% Controller
Dc = C2.C;

%% OL Bode of controller and Model
bode(Dc*model)
margin(Dc*model)
myopt = bodeoptions;
myopt.Grid = 'on'; myOpt.FreqUnits = 'Hz';
myopt.XLabel.FontSize = 16; myopt.YLabel.FontSize = 16;
myopt.TickLabel.FontSize = 16;
myopt.Title.String = '';
set(findall(gcf,'Type','line'),'LineWidth',2)
grid on

%% Step of Controller and Model
CL_Dc = feedback(Dc*model,1);
figure('Name','Controller')
step(CL_Dc)
stepinfo(CL_Dc)

%% Ramp of PII
CL_Dc = feedback(Dc*model,1);
t = 0:.00001:.1;
lsim(CL_Dc,t,t)

%% CONTROL SYSTEM DESIGNER
controlSystemDesigner('bode',model)
