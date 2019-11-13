%% plot_ex14.m - Plot Handle.
% Part 1. Plot figure and get a handle: HG
clf                                 % Clear current figure
t = 0:pi/30:2*pi;
GH = [sin(2*t); cos(2*t); exp(sin(2*t)+cos(2*t));];
HG = plot(t, GH); shg
%% Part 2. Change plot properties
% Set Line Color
HG(1).Color='r';                    % HG(1).color = [1 0 0]; % Alternative    
HG(2).Color='g';                    % HG(2).color = [0 1 0]  % Alternative  
HG(3).Color='b';                    % HG(3).color = [0 0 1]  % Alternative
% Set Line Type
HG(1).LineStyle = '-';
HG(2).LineStyle = '--';
HG(3).LineStyle = '-.';
% Set Line Width
HG(1).LineWidth = HG(1).LineWidth+0.5;
HG(2).LineWidth = HG(2).LineWidth+0.5;
HG(3).LineWidth = HG(3).LineWidth+0.5;
% Set Marker type
set(HG(1), 'marker', 'p')           % Marker is a Pentagon      
set(HG(2), 'marker', 'd')           % Marker is a Diamond 
set(HG(3), 'marker', 'o')           % Marker is a Circle 
% Set Marker size
set(HG(1), 'MarkerSize', 5)             
set(HG(2), 'MarkerSize', 7)             
set(HG(3), 'MarkerSize', 9)   
% Set Marker Face color
set(HG(1), 'markerfacecolor', [1 0 1])  
set(HG(2), 'markerfacecolor', [0 1 1])  
set(HG(3), 'markerfacecolor', [1 1 0]) 
title('\fontsize{11} G(\alpha) vs. \alpha. [\alpha = 0:\pi/30:2\pi]')
xlabel('\alpha'), ylabel 'F(\alpha)', grid on, axis tight
legend('sin(2\alpha)', 'cos(2\alpha)',...
    'e^{sin(2\alpha)+cos(2\alpha)}')
