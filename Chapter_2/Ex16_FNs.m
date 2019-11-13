%% Ex16_FNs.m
clc, clearvars 
t=-4*pi:.0001:3*pi;  % Whole t series 
F=ones(size(t));     % Memory allocation  
tic;
for ii = 1:numel(t)
    if t(ii)<=-2*pi
        F(ii)=exp(sin(2*t(ii)))+exp(cos(100*t(ii)));
    elseif t(ii)>-2*pi && t(ii)<=pi
        F(ii) = sin(2*t(ii))+cos(100*t(ii));
    elseif t(ii)>pi && t(ii)<=2*pi
        F(ii)=exp(sin(100*t(ii)))+exp(cos(2*t(ii)));
    else
        F(ii)=1;
    end
end
   Tma=toc;   
   plot(t, F), grid on; 
   plot(t, F), grid on, xlabel('\it t'), ylabel('\it F(t)'), 
   title('Plot of function values w.r.t value ranges of t'), shg     
   fprintf('Computation Time with memory allocation:  %2.6g \n', Tma)
