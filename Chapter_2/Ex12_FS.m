%% [FOR ... END]
mu=1:7; t=0:pi/1e3:pi;
F=zeros(numel(mu), numel(t)); % Memory allocation 
for mu=1:7
    for ii=1:numel(t)
    F(mu, ii)=sin(2*t(ii))*sqrt(sin(mu*t(ii)*sqrt(t(ii)+t(ii)^2+t(ii)^3)));
    end
    plot(t, F(mu,:)), hold all
end
xlabel('t'), ylabel('F'), title('Sine waves'), grid on    
%% [WHILE ... END] and [FOR ... END]
mu=1:7; t=0:pi/1e3:pi; 
F=zeros(numel(mu), numel(t)); % Memory allocation 
MU = 1;
while ne(MU, 8)
    ii=1;
    while ii~=numel(t)+1
    F(MU, ii)=sin(2*t(ii))*sqrt(sin(MU*t(ii)*sqrt(t(ii)+t(ii)^2+t(ii)^3)));
    ii=ii+1;
    end
    plot(t, F(MU,:)), hold all 
    MU=MU+1;
end
xlabel('t'), ylabel('F'), title('Sine waves'), grid on    
