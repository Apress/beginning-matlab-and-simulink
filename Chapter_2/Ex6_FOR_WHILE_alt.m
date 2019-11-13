%% Ex6_FOR_WHILE.m
clearvars
% Ver 1
ii =1;
for t=0:.001:6.28
    f=exp(sin(t));
    F1(ii)=f;   
    ii=ii+1;
end
% Ver 2
t=0:.001:6.28;
for ii=1:numel(t)
    f=exp(sin(t(ii)));
    F2(ii)=f;
end
%% Ver 3
jj=0; 
while jj~=numel(t)
    f=exp(sin(t(jj+1)));
    F3(jj+1)=f;
    jj=jj+1;
end
% Ver 4
jj=1; 
while jj~=numel(t)+1
    f=exp(sin(t(jj)));
    F4(jj)=f;  
    jj=jj+1;
end
%% Vectorization: the most efficient method
t=0:.001:6.28;
f=exp(sin(t));
