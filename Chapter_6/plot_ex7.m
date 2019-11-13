% plot_ex7.m
% Version 1. For older versions of MATLAB 
clf          % Clean up an open figure
gamma=0:pi/40:15*pi;
y=2.725*cos(2.725*gamma+25).*exp(-.1*gamma); 
z=0.725*sin(0.725*gamma+25).*log(0.5*gamma); 
% gamma vs. y and gamma vs. z plotted for each value of gamma.
[AX,Y1,Y2] = plotyy(gamma, y, gamma, z, 'plot');  
% Title of the plot is in LaTEX.
title(['\fontsize{9} y=2.725*cos(2.725*\gamma+25)*e^{-0.1\gamma}',...
'& z=0.725*sin(0.725*\gamma+25)*log(0.5*\gamma)'])
xlabel('\fontsize{15} \gamma'); 
set(get(AX(1),'Ylabel'),'String',...
'y=2.725*cos(2.725*\gamma+25).*e^{-^0.1\gamma}') 
set(get(AX(2),'Ylabel'),'String',...
'z=0.725*sin(0.725*\gamma+25)*log(0.5*\gamma)') 
grid on; axis tight  
%% Version 2. For recent versions of MATLAB
gamma=0:pi/40:15*pi;
y=2.725*cos(2.725*gamma+25).*exp(-.1*gamma); 
z=0.725*sin(0.725*gamma+25).*log(0.5*gamma); 
yyaxis left  % Select the left y-axis to plot the data
plot(gamma, y, 'r-o'), 
ylabel('y=2.725*cos(2.725*\gamma+25).*e^{-^0.1\gamma}') 
yyaxis right % Select the right y-axis to plot the data
plot(gamma, z, 'b--x');
ylabel('z=0.725*sin(0.725*\gamma+25)*log(0.5*\gamma)'), 
grid minor, 
title(['\fontsize{9} y=2.725*cos(2.725*\gamma+25)*e^{-0.1\gamma}',...
'& z=0.725*sin(0.725*\gamma+25)*log(0.5*\gamma)']), axis tight
