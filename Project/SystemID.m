clear; close all; clc;
load('group8_data.mat')


% figure('Name','Raw Data')
% hold on
for iData = 1:3
%     plot(indata(:,iData),outdata(:,iData))
end

modelIn = indata(:,1);
modelOut = outdata(:,1);

meanIn = mean(indata,2);
meanOut = mean(outdata,2);

freq = 1 / 350000;