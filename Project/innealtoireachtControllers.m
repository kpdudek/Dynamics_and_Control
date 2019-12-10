%
% This function returns the transfer functions for the conservative controller and aggressive
% controller denoted as:
%   Dc1 --> conservative
%   Dc2 --> aggressive
%
%
function [Dc1,Dc2] = innealtoireachtControllers()
c = load('Conservative_PII_PZ.mat');
a = load('Aggressive.mat');

Dc1 = c.C;
Dc2 = a.C;
end

