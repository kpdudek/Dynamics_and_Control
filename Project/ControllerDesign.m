%% Setup and load the Piezo Models
clear;clc;close all;
s = tf('s');

load('Conservative.mat')
load('Aggresive.mat')
load('Average.mat')

%% Closed loop step response of Plant
CL_P = feedback(Conservative,1);
figure('Name','CL of Plant')
step(CL_G)

%% PII Controller
kp = .001;
ki = -.001;
Dc = (kp + ki/s^2);

%% OL Bode of PII Controller
bode(Dc*Conservative)
margin(Dc*Conservative)

%% Step of PII
CL_PII = feedback(Dc*average,1);
figure('Name','PII Control')
step(CL_PII)

%% Ramp of PII
t = 0:.1:10000;
lsim(CL_PII,t,t)

%% CONTROL SYSTEM DESIGNER
controlSystemDesigner('bode',model)
