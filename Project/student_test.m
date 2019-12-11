%======================================================================
% m-file to help run tests of your controllers
%======================================================================

%% Clean things up and what not
clear;clc;close all;
s = tf('s');

% load('Aggressive.mat')
% load('Conservative_PII_PZ_2_with_Attenuation.mat')
load('PID_Notch.mat','C');
load('Plant_5P4Z.mat')


%% Define your plant
%======================================================================
% Adjust the model as needed
%======================================================================
% G_nom = 0.01/s;
G_nom = G;

% Set the noise level you want to work with
Noise = 0;

%% Define your controller
%======================================================================G
% After defining it you should be able to run the simulink file to generate
% the data.
%======================================================================
% D_c = 0.0001;
% 
% Kp = .0001*43500;  %Ki/kp = position of pole
% Ki = .01*43500;
% Kd = 0;
% D_roll = 100/(s+200);
% 
% D_c = (Kp + Ki/s)*D_roll;
D_c = C;

%% Define the input parameters for a step
times = [0 0.5 0.50001 1 1.0001];
outputVals = um2V([4 4 5 5 4]);

set_param('projectTest_R2013a_2', 'StopTime', '3*times(5)')


%% Define the input parameters for a big step
times = [0 0.5 0.50001 1 1.0001];
outputVals = um2V([5 5 45 45 5]);

set_param('projectTest_R2013a_2', 'StopTime', '3*times(5)')


%% Define the input parameters for ramp
LPS = 50;       % lines per second
rampStart = 1;  % range in um
rampRange = 5;  % in um

times = [0 1/(2*LPS) 1/LPS];
outputVals = um2V([rampStart rampStart+rampRange rampStart]);

set_param('projectTest_R2013a_2', 'StopTime', '20/LPS')

%%
%======================================================================
% Plot the response
%======================================================================
figure(1)
clf
plot(y.Time,y.Data,'linewidth',2);
hold on
plot(r.Time,r.Data,'r','linewidth',2);
set(gca,'fontsize',14);
xlabel('time (s)','fontsize',16);
ylabel('Output (volts)','fontsize',16);
legend('output','input','fontsize',16,'Location','NorthWest');

figure(2)
plot(u.Time,u.Data,'linewidth',2);
set(gca,'fontsize',14);
xlabel('time (s)','fontsize',16);
ylabel('control (volts)','fontsize',16);

%%
%======================================================================
% Analyze the data: up to you!
%======================================================================
