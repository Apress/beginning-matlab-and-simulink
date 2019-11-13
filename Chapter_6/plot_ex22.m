% plot_ex22.m
for m=1:20
     [x, y]=meshgrid(linspace(-13, 13, 200));
     z=log10(abs(x)).*tan(m*y*pi/180);
     mesh(x, y, z)
     M(m)=getframe(gcf);
end
title({['3D surface-contour plot of the function' ],...
['f(x, y)=log10(abs(x))tan(0.5*y*\pi/180)']});
xlabel('X-axis'); ylabel('Y-axis');
zlabel('f(x, y) function values');
movie(M,2) % The plot movie is played twice
