% plot_ex20.m
[t, theta]=meshgrid(linspace(-0.2*pi, 0.2*pi, 50));
G=log(abs(cos(0.5*t+theta*5)+sinh(5*t+0.5*theta)));
figure(1), waterfall(t,theta,G);
xlabel('t-axis'); ylabel('\theta-axis'); 
zlabel('G(t,\theta) function values');
title(['3D surface-waterfall plot of',... 'G(t,\theta)=ln(abs((cos(0.5*t+\theta*5)+sinh(5*t+0.5*\theta)))']);
figure(2)
ribbon(G), title('3D ribbon plot of the function G(t, \theta)'); 
xlabel('t-axis'); ylabel('\theta-axis');
zlabel('G(t,\theta) function'); axis vis3d
