%% plot_ex8.m 
gamma=0:pi/40:15*pi; 
y=2.725*cos(2.725*gamma+25).*exp(-.1*gamma); 
z=0.725*sin(0.725*gamma+25).*log(0.5*gamma); 
t=-5*pi:pi/40:5*pi;     
x=exp(2.725*cos(2.725*t+25));     
w=0.725*sin(0.725*log(0.5*t)+25);  

figure % Creates a blank figure
subplot(2,2,1); plot(gamma, y, 'r-'); grid on
title('y=2.725*cos(2.725*\gamma+25)*e^{-0.1\gamma}')
subplot(2,2,2); plot(gamma, z, 'b-'); grid on
title('z=0.725*sin(0.725*\gamma+25).*log(0.5*\gamma)')
subplot (2,2,3)
semilogx(t,x,'r-')  % x axis in log. Scale for demo purposes 
grid on
axis([0.05 25 0 15.5]); % Assign min and max values for x & y axes
title('x=e^{2.725cos(2.725t+25)}')
subplot(2,2,4)
semilogy(t, w, 'b-')      % y axis in log. Scale 
grid on; axis([-17 17 0.025 5.5]), 
title('w=0.725*sin(0.725*log(0.5*t)+25)')
