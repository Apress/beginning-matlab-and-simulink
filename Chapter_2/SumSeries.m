% SumSeries.m computes a sum of Series:
%% Version A. [for … end]
clearvars
sign=1; sum_ser=0;
n=input('Enter number of series to compute:  ');
for N=1:n
    sum_ser=sum_ser+sign/N; sign=-sign;
end
fprintf('Sum of %g series is equal to %2.5f \n', n, sum_ser)
%% Version B. [while … end]
clearvars
S=0;
N=input('Enter number if series to compute:  ');
ii=1;
while ii~=N+1    
if mod(ii,2)==0
        S=S-1/ii;
else
        S=S+1/ii;
end
    ii=ii+1;
end
fprintf('Sum of %g series is equal to %2.5f \n', ii, S)
%% Version C. [for … end]
clearvars
Sum=1;
n = input('Enter number of series to compute:  ');
for k=2:n
    if eq(mod(k,2), 0)
        Sum=Sum-1/k;
    else
        Sum=Sum+1/k;
    end
end
fprintf('Sum of %g series is equal to %2.5f  \n', k, Sum)
