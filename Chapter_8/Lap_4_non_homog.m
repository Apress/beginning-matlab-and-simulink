% Lap_4_non_homog.m
syms t s
F=5*(exp(-2*s)-exp(-10*s))/s; Y=2*s^2+s+2;
TF=F/Y; 
TFt=ilaplace(TF); 
pretty(TFt); 
Sol=vectorize(TFt);
t=linspace(0, 20, 400); 
S=eval(Sol); 
plot(t, S, 'bo-'); 
grid minor
title('Differential Equation with Discontinuous Forcing Fcn')
grid on, xlabel('time'), ylabel('y(t) solution'), shg
