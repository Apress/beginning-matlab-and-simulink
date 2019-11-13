% Ex11_sine_series.m
%% Ver A. [FOR ... END]
clearvars, close all
n=11; b = -5:5;x=0:.01:10; f=0; L=10;
f = zeros(n, numel(x)); % Memory allocation
for k=1:n
    f=f+(b(k)*sin((2*k-1)*pi*x(:))/(2*L));
    Fun(k,:)=f;
    plot(x(:), Fun(k,:)), label{k}=(['Iteration: ' num2str(k)]); 
    legend(label{:}), hold all, 
end
grid on, title('sum of series'), xlabel('x'), ylabel('f(b_n, x)')

%% Ver B.
clearvars
n=11; b = -5:5;x=0:.01:10; L=10;
f = zeros(n, numel(x)); % Memory allocation
for k=1:n
    f(k, :)=(b(k)*sin((2*k-1)*pi*x(:))/(2*L));
end
Fun = sum(f(:,:));  % Obtain the final values (total sum of all).

%% Ver C. [WHILE...END]
clearvars, close all
n=11; b = -5:5;x=0:.01:10; f=0; L=10; k=1;
Fun = zeros(n, numel(x)); % Memory allocation
while k<n+1
    f=f+(b(k)*sin((2*k-1)*pi*x(:))/(2*L));
    Fun(k,:)=f;
    plot(x(:), Fun(k,:)), label{k}=(['Iteration: ' num2str(k)]); 
    legend(label{:}), hold all
    k=k+1;
end
grid on, title('sum of series'), xlabel('x'), ylabel('f(b_n, x)')
