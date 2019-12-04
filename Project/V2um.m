% Routine to translate units of volts to units of microns for the piezo
%   Conversion is [0,50] um is [-10,10] V

function out = V2um(in);

out = (in+10)*5/2;