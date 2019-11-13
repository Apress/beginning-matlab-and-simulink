function f=myfunction_alt(t)
% HELP: this function file (myfunction_alt.m is alternative to myfunction.m) computes values of the expression f(t) = 3./exp(sind(t))+5./exp(cosd(t)) for  
% given values of t, saves the computed values of f(t) in the workspace, and plots computed resultsthem.
% Note that [t] is input argument that has to be in degrees not in radians, e.g.numerical array, e.g. >> t = -360:720360;     
% To execute this file: >> t = -720:10:720;  f=myfunction(t);  % that assigns output values to a variable f     % and shows the plot.
% To execute this file: >> t = 0:1:180;     myfunction(t);  % that assigns output values to a variable ans % shows the plot. 
% To execute this file: >> FF=myfunction(-180:2:360);  % that assigns output values to a variable FF    
% t = 0:720;  % Input variable t is assigned internally
f=3./exp(sind(t))+5./exp(cosd(t));
plot(t,f, 'ro-', 'linewidth', 1.5), grid on
title('Plot of myfunction.m file')
