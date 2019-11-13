% Ex13_CF.m computes Exp(-3t/7) Math function
% Solution Way 1
clc; clear all; close all
 
tic
t=0:1e-6:5;
m_num=length(t);
for m=1:m_num
    f(m)=exp(-3*t(m)/7);
end
Tfor=toc; fprintf('[1] FOR loop computation TIME: %g \n', Tfor)
plot(t, f, 'ro'), xlabel('t'), ylabel('f(t)'), title('t vs. f(t)')
% % Solution Way 2
clearvars, close all
tic
t=0:1e-3:5;
m_num=length(t);
for m=1:m_num
    f(m)=exp(-3*t(m)/7); plot(t(m), f(m), 'ro')
end
TforP=toc;
xlabel('t'), ylabel('f(t)'), title('t vs. f(t)')
fprintf('[2] FOR loop computation TIME with plot() in it: %g \n', TforP)
% Solution Way 3
clearvars, close all
tic
t=0:1e-3:5;
m_num=length(t); m=1;
while m<=m_num
    f(m)=exp(-3*t(m)/7); plot(t(m), f(m), 'ro')
    m=m+1;
end
Twhile=toc; 
fprintf('[3] WHILE loop computation TIME with plot() in it: %g \n', Twhile)
% Solution WAY 4. Improved by memory allocation.
clearvars, close all
tic
t=0:1e-6:5;
m_num=length(t); f=zeros(1,m_num-1);
for m=1:m_num
    f(m)=exp(-3*t(m)/7);
end
plot(t,f, 'bo'); 
TforIm=toc; 
xlabel('t'), ylabel('f(t)'), title('t vs. f(t)')
fprintf('[4] Improved FOR loop TIME with memory allocation: %g\n', TforIm)
% Solution WAY 5. Vectorized method
clearvars, close all
t=0:1e-6:5; 
tic
f=exp(-3*t/7);
Tvec=toc; plot(t,f, 'bo')
xlabel('t'), ylabel('f(t)'), title('t vs. f(t)')
fprintf('[5] Recommended VECTORIZED method time: %g\n', Tvec)
