%% Setup and load the Piezo Models
clear;clc;close all;
s = tf('s');

load('Conservative.mat')
load('Aggresive.mat')
load('Average.mat')
load('TwoPOneZ.mat')
load('Positive.mat')
load('5P4Z.mat')
load('P5Z3.mat')


model = Poles_5_Zeros_3 * -1;
%% Closed loop step response of Plant
CL_P = feedback(model,1);
figure('Name','CL of Plant')
step(CL_P)

%% PII Controller
kp = .0001;
ki = .000001;
Dc = (kp + (ki/s^2));

%% OL Bode of PII Controller
bode(Dc*model)
margin(Dc*model)

%% Step of PII
CL_PII = feedback(Dc*model,1);
figure('Name','PII Control')
step(CL_PII)

%% Ramp of PII
t = 0:.1:10000;
lsim(CL_PII,t,t)

%% CONTROL SYSTEM DESIGNER
controlSystemDesigner('bode',model)
