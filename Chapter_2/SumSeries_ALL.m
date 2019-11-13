% SumSeries_ALL.m
%% Version A. [for ... end] 
clearvars
Sum=1;
n = input('Enter number of series to compute:  ');
k=2:1:n ;
for jj=1:numel(k)
    if eq(mod(k(jj),2), 0)
        Sum(jj+1)=Sum(jj)-1/k(jj);
    else
        Sum  (jj+1)=Sum(jj)+1/k(jj);
    end
    fprintf('Sum of %g series is equal to %2.5f  \n', k(jj), Sum(jj+1))
end
disp('         ')
fprintf('Sum of %g series is equal to %2.5f \n', k(end), Sum(end))

%% Version B. [for ... end] 
clearvars
sign=1; sum_ser=0;
n=input('Enter number if series to compute:  ');
for N=1:n
    sum_ser=sum_ser+sign/N; sign=-sign;
    S(N)=sum_ser;
    fprintf('Sum of %g series is equal to %2.5f \n', n, sum_ser)
end
%% Version C. [while … end]
clearvars
S=0;
N=input('Enter number if series to compute:  ');
ii=1;
while ii~=N+1    
if mod(ii,2)==0
        S(ii+1)=S(ii)-1/ii;
        else
        S(ii+1)=S(ii)+1/ii;
        end
    fprintf('Sum of %g series is equal to %2.5f \n', ii, S(ii+1))
    ii=ii+1;
end
%% Version D. [while … end]
clearvars
S=0;
N=input('Enter number if series to compute:  ');
ii=1;
while ii~=N+1    
if mod(ii,2)==0
        S=S-1/ii;
        Ss(ii)=S;
else
        S=S+1/ii;
        Ss(ii)=S;
end
    fprintf('Sum of %g series is equal to %2.5f \n', ii, Ss(ii))
    ii=ii+1;
end
