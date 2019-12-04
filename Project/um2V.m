% Routine to translate units of microns to units of volts for the piezo
%   Conversion is [0,50] um is [-10,10] V

function out = um2V(in);

out = (2/5)*in - 10;