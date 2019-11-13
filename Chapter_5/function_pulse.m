function F=function_pulse(t, Amp, n)
% HELP. Two input arguments, viz. t, Amp, and n are needed for            
% simulation, where t is time vector, Amp is amplitude of a pulse 
% and n number of approximation terms in Fourier series.

F(1,:)=(Amp/pi)*(1-cos(pi))*sin(pi*t);
for ii=2:n
    F=F+(Amp/(ii*pi))*(1-cos(ii*pi))*sin(ii*pi*t);
end
return
