%=========================================================================
% [y,u,t,th] = getStep(ahat,Khat,seed,num2avg,figNum)
%
% Takes a random seed so that your result is a bit different than everyone
% else's while still being the same each time you run (wth the same seed).
% Produces a step response to some first order system.
%
% Inputs:
%   ahat - estimate of the pole
%   Khat - estimate of the gain
%   seed - seed for the random number generator
%   num2avg - number of trials to average over
%   figNum - figure number to plot on
%
% Outputs:
%   y - matrix where each column is a single run
%   yavg - the average of all those runs
%   u - the input used
%   t - the corresponding time signal with dt = 0.01
%   th - the true parameters
%=========================================================================

function [y,yavg,u,t,th] = getStep(ahat,Khat,seed,num2avg,figNum);

rng(seed);

s = tf('s');
a = 10 + 0.1*(rand(1)-0.5);
K = a+0.75*(rand(1)-0.5);
sig = 0.2;

th.a = a;
th.K = K;

G = K/(s+a);
if( ahat ~= 0 )
    Ghat = Khat/(s+ahat);
end

t = 0:0.01:2;
u = ones(size(t))';

yt = lsim(G,u,t);
for i = 1:num2avg
    y(:,i) = yt+sig*randn(size(yt));
end
yavg = mean(y,2);

if( ahat ~= 0 )
    y2 = lsim(Ghat,u,t);
end

figure(figNum);clf;
plot(t,y,'linewidth',2);
hold on
plot(t,u,'k','linewidth',2);

figure(figNum+1);clf;
plot(t,yavg,'linewidth',2);
hold on
if( ahat ~= 0 )
    plot(t,y2,'r','linewidth',2);
end
set(gca,'fontsize',16);
xlabel('time (s)','fontsize',16);
ylabel('output','fontsize',16);
grid on;