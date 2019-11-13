% plot_ex25.m
% Study the projectile trajectory and velocity
clearvars; clc; close all
% Given data:
g=9.8;      % acceleration due to Earth gravity in m/s^2
theta=30;   % angle to the horizontal axis in degrees
v0=40;      % speed of the thrown ball in m/s
% t_hit is time needed for the thrown ball to hit the ground.
% h is height of the thrown ball relative to the ground in m.
% v is speed of the thrown ball over time.
% t is a time series for computation in [sec].
% dt is increment of total time. 
t_hit=2*v0*sin(theta*pi/180)/g;
dt=t_hit/80; t=(0:dt:t_hit);
h=v0*t.*sin(theta*pi/180) - 0.5*g*t.^2;
v=sqrt(v0*v0-2*v0*g*t.*sin(theta*pi/180)+g*g*t.^2);
%% Animated plot of the projectile
dt=t_hit/100; t=(0:dt:t_hit);
for ii=1:length(t) 
h(ii)=v0*t(ii).*sin(theta*pi/180) - 0.5*g*t(ii).^2;
plot(t(ii), h(ii), 'o:', 'markerfacecolor', 'y')
hold all
M(ii)=getframe(gcf);
end
% movie(M, 1)
%% Animated plot of the projectile velocity
for ii=1:length(t) 
v(ii)=sqrt(v0^2-2*v0*g*t(ii).*sin(theta*pi/180)+g^2*t(ii).^2);
drawnow
plot(t(ii), v(ii), 'o:', 'markerfacecolor', 'c'), hold all
end
