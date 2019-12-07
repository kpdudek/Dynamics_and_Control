%% Setup and load the Piezo Models
clear;clc;close all;
s = tf('s');

load('Conservative.mat')
load('Aggresive.mat')
load('Average.mat')
load('TwoPOneZ.mat')


model = TwoPOneZ;
%% Closed loop step response of Plant
CL_P = feedback(model,1);
figure('Name','CL of Plant')
step(CL_P)

%% PII Controller
kp = .01;
ki = .001;
Dc = (kp + (ki/s));

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
