%
% This function returns the transfer functions for the conservative controller and aggressive
% controller denoted as:
%   C_c --> conservative
%   C_a --> aggressive
%
%
function [C_c,C_a] = innealtoireachtControllers()
c = load('Conservative_PII_PZ.mat');
a = load('Aggressive.mat');

C_c = c.C;
C_a = a.C;
end

