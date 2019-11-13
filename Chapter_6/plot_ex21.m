% plot_ex21.m - Amusement ride - corkscrew plot in 3D
close all
t=0:pi/15:10*pi; a=1; x=a.*cos(t); y=a.*sin(t);
% case (a)
b1=0.1; z1=b1.*t;
% case (b)
b2=0.2; z2=b2.*t; 
% case (c) 
b3=-0.1; z3=b3.*t;
subplot(311); plot3(x, y, z1, 'r*-'); legend('b_1=0.1')
title('Corkscrew: b_1=0.1; b_2=0.2, b_3= -0.1');
subplot(312); plot3(x, y, z2, 'bs-'); legend('b_2=0.2')
subplot(313); plot3(x, y, z3, 'ko--');legend('b_3=-0.1')
xlabel('X'); ylabel('Y'); zlabel('Z'); 
figure(2); X=[x,x,x]; Y=[y,y,y]; Z=[z1,z2,z3];
comet3(X,Y,Z); % Animated plot
%% Alternative animated plot with ezplot
figure(3); 
ezplot3('cos(t)','sin(t)', '0.1*t', [0,10*pi], 'animate'); hold on
ezplot3('cos(t)', 'sin(t)', '0.2*t', [0, 10*pi], 'animate'),
ezplot3('cos(t)', 'sin(t)', '-0.1*t', [0, 10*pi], 'animate')
