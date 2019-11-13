% Ex13_CT.m
%% [tic ... toc]
clc; clear all, close all
T1=tic;
t=0:1e-4:5; m_num=length(t);
for m=1:m_num
    f(m)=exp(-3*t(m)/7);
end
Tfor1=toc(T1);
fprintf('FOR loop time [tic...toc]: %g \n', Tfor1)
%% [cputime ... cputime-Time]
clear all, close all
TT=cputime;
t=0:1e-4:5; m_num=length(t);
for m=1:m_num
    f(m)=exp(-3*t(m)/7);
end
Tfor2=cputime-TT;
fprintf('FOR loop time with [cputime]: %g \n', Tfor2)
%% [clock ... etime()]
clear all, close all
TT=clock; t=0:1e-4:5; m_num=length(t);
for m=1:m_num
    f(m)=exp(-3*t(m)/7);
end
Tfor3=etime(clock, TT);
fprintf('FOR loop time with [clock...etime]: %g \n', Tfor3)
