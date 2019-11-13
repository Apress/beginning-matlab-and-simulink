%% plot_ex19.m
% q1, q2 are charges of the particles in coulombs (C)
% r1, r2 are distances of the charges from the point in meters 
% epsilon is permittivity of free space
% r1,r2, V(r1,r2) are coordinate systems for plotting
close all
[r1, r2] = meshgrid(-0.25:0.01:.25);
epsilon  = 8.854e-12;q1 = 2e-10; q2=4e-10; 
coeff    = (1./(4*pi*epsilon));
V = coeff.*(q1./r1 + q2./r2);
figure(1) % Surface plot
surface(r1,r2,V); xlabel('r1'); ylabel('r2'); zlabel('V(r1,r2)')
title(['Fig. 1. Electric potential field', ...
'of two charged particles with surface plot'])
grid on, view(-15,15), axis tight, colormap Jet
figure(2) % Meshed plot with contour 
mesh(r1,r2,V); xlabel('r1'); ylabel('r2'); zlabel('V');
title(['Fig. 2. Electric potential field', ...
'of two charged particles with mesh plot']); 
axis vis3d; colormap hsv
