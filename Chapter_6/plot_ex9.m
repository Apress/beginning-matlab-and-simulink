%% plot_ex9.m 
close all
x = linspace(-3*pi, 3*pi, 3333);
y=[sec(x)./x; 100*sin(x)./x;10*cos(x)./x;10*tan(x)./x; exp(x)./(x);]; 
plot( x, y(1,:), 'g:o'); hold on
plot(x, y(2,:),'k-', x, y(3,:), 'r:', x, y(4,:),'b-.', 'LineWidth',1.5)
plot(x, y(5,:),'m-','LineWidth',1.5)
title('[y_1, y_2, y_3, y_4, y_5] vs. x')
xlabel('\it x'); ylabel('\it y function values') 
legend('sec(x)/x', '100*sin(x)/x ','10*cos(x)/x','10*tan(x)/x', 'e^x/x')
axis([-3*pi, 3*pi, -100, 100]); hold off; grid on
shg % Show a plot figure
