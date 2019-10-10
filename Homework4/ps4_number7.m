%========================================================================
% [y,t] = ps4_number7(kp,ki,kd,T);
%
% Matlab routine that just plots the step response to some system. Shows
% the response on figure 1. Assumes the PID controller form is
%   kp + ki/s + s*kd
%   Inputs:
%       kp: proportional gain
%       ki: integral gain
%       kd: derivative gain
%       T: final time of simulation (0 means automatically choose)
%   Outputs:
%       y: vector of output values
%       t: vector of times
%========================================================================
function [y,t] = ps4_number7(kp,ki,kd,T);

%====== Define the plant
s = tf('s');
% P = exp(-2*s)*(s+2)/(s*(s+4)*(s^2 + 4*s + 16));
P = (s+2)/(s*(s+4)*(s^2 + 4*s + 16));

%===== Define the controller and closed loop system
Dc = kp + ki/s + kd*s;
Gcl = feedback(P*Dc,1);

%===== Get the step response
if( T == 0 )
    [y,t] = step(Gcl);
else
    [y,t] = step(Gcl,T);
end
figure(1);clf;
plot(t,y,'linewidth',2);
xlabel('time (sec)');
ylabel('output');
set(gca,'fontsize',16);
grid on

