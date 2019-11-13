%% Ex6_FOR_WHILE.m
clearvars
% Ver 1
ii =1;
for t=0:.001:6.28
    f(ii)=exp(sin(t));
    ii=ii+1;
end
% Ver 2
t=0:.001:6.28;
for k=1:numel(t)
    f(k)=exp(sin(t(k)));
end
%% Ver 3
jj=0; 
while jj~=numel(t)
    f(jj+1)=exp(sin(t(jj+1)));
    jj=jj+1;
end
% Ver 4
m=1; 
while m~=numel(t)+1
    f(m)=exp(sin(t(m)));
    m=m+1;
end
