% Ex9_wFUN.m
y0=1/2;         % Magnitude of the wave 
lambda=495e-9;  % Visible light wave length 
k=2*pi/lambda;  % Wave number
f=5000;         % Frequency
omega=2*pi*f;   % Angular frequency 
x=[0, 1e-5];    % Length 
t=[0, 1e-3];    % Time length 
N=1e5;          % Number of data points to be computed & simulated 
xs=linspace(x(1), x(2), N);    % Wave Length series
time=linspace(t(1), t(2), N);  % Time series
 
y1 = F1(y0, k, xs, omega, time);
y2 = F2(y0, k, time, omega, xs); % NB: it is vital the order of the varaibales: xs vs. time && V5 vs. V3
plot(xs, y1, 'bo', xs, y2, 'rx-'), grid on, hold on  
title('Nested Function files within an M-file')
ORG0 = y0*sin(k*xs-omega*time);
plot(xs, ORG0, 'k', 'linewidth', 2)
legend('Fun1','Fun2','Original'), shg
 
function out1 = F1(var1, var2, var3, var4, var5)
% M-file nested function 1 called: F1
out1=var1*sin(var2*var3-var4*var5);
end
 
function out2 = F2(V1, V2, V3, V4, V5)
% M-file nested function 2 called: F2
% NB: it is vital the order of the variables: xs vs. time && V5 vs. V3
out2=V1*sin(V2*V5-V4*V3);
end
