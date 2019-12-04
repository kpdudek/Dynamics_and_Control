%% Setup and load the Piezo Models
clear all;clc;close all;
s = tf('s');

load('Conservative.mat')
load('Aggresive.mat')


%% Closed loop step response of Plant
CL_P = feedback(Conservative,1);
figure('Name','CL of Plant')
step(CL_G)


%% PII Controller
kp = .0001;
ki = .01;
Dc = (kp + ki/s);

bode(Dc*Aggresive)
margin(Dc*Aggresive)
%%
CL_PII = feedback(Dc*Conservative,1);
figure('Name','PII Control')
step(CL_PII)