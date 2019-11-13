%% LeibnitzSeries.m 
% Version A. 
clearvars
N=input('Enter number of terms to approximate pi/4:  ');
S=0;                        % Initial value of summation
Err=zeros(1, N);   % Memory allocation
for k=0:N-1
    p=(-1)^k;
    S=S+p/(2*k+1);
    Err(k)=pi/4-S;  % Accumulates all of the values of the Error from all iterations 
end
plot(1:N, Err), grid on
title(['\pi/4 Approximation of ', num2str(N), ' terms'])
ylabel('Error'), xlabel('Number of terms')
%% Leibnitz series 
% Version B
clearvars
n=input('Enter number of terms to approximate pi/4:  ');
S=0;  % Initial value of summation
Error=zeros(1, n);  % Memory allocation
k=0;
while k<=n-1
    p=(-1)^k;
    S=S+p/(2*k+1);
    Error(k+1)=pi/4-S; % Accumulates all of the values of the Error from all iterations
    k=k+1;
end
plot(1:n, Error), grid on
title(['\pi/4 Approximation of ', num2str(n), ' terms'])
ylabel('Error'), xlabel('Number of terms')
