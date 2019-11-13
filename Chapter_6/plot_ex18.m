% plot_ex18.m
close all
for omega=50:5:150
 handle=@(x,y)(0.5*cos(omega*pi*x/180)+0.75*sin(omega*y*pi/180));
    ezsurfc(handle, [-pi, pi], [-pi, pi]); 
end
