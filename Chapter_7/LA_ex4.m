% PART I. 
% The given system is written from the Ax=B as [A]*[abc]=[B]
A=[.072, 0, -1; 0, .12, -1; 1 1 0];
B=[-12, -9, 50];
abc1=A\B'                %#ok  % BACKSLASH \
abc2 = linsolve(A,B')    %#ok  % LINSOLVE()
abc3 = inv(A)*B'         %#ok  % INV 
% SOLVE() in symbolic MATH
syms a b c
abc4=solve(0.072*a-c+12, 0.12*b-c+9, a+b-50);
abc4=double([abc4.a; abc4.b; abc4.c]) %#ok  % SOLVE()
%% Part II. %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BACKSLASH \ ; LINSOLVE(); INV
tic
Bk=50:250; 
a=zeros(numel(Bk),1); b=zeros(numel(Bk),1); c=zeros(numel(Bk),1);
A=[.072, 0, -1; 0, .12, -1; 1 1 0];
for ii=1:numel(Bk)
    B=[-12; -9; Bk(ii)];
    abc=A\B;
    a(ii)=abc(1,:);
    b(ii)=abc(2,:);
    c(ii)=abc(3,:);
end
Time1=toc;
fprintf('Computation time with BACKSLASH: %3.3f  \n', Time1)
clearvars 
tic
Bk=50:250; 
a=zeros(numel(Bk),1); b=zeros(numel(Bk),1); c=zeros(numel(Bk),1);
A=[.072, 0, -1; 0, .12, -1; 1 1 0];
for ii=1:numel(Bk)
    B=[-12; -9; Bk(ii)];
    abc=linsolve(A,B);
    a(ii)=abc(1,:);
    b(ii)=abc(2,:);
    c(ii)=abc(3,:);
end
Time2=toc;
fprintf('Computation time with LINSOLVE:  %3.3f  \n', Time2)
clearvars 
tic
Bk=50:250; 
a=zeros(numel(Bk),1); b=zeros(numel(Bk),1); c=zeros(numel(Bk),1);
A=[.072, 0, -1; 0, .12, -1; 1 1 0];
for ii=1:numel(Bk)
    B=[-12; -9; Bk(ii)];
    abc=inv(A)*B;
    a(ii)=abc(1,:); b(ii)=abc(2,:); c(ii)=abc(3,:);
end
Time3=toc;
fprintf('Computation time with INV:       %3.3f  \n', Time3)
%% SOLVE() from symbolic math
clearvars 
tic;
Bk=50:250; 
a1=zeros(numel(Bk),1);b1=zeros(numel(Bk),1); c1=zeros(numel(Bk),1);
syms a b c
for ii=1:numel(Bk) 
    abc=solve(0.072*a-c+12,0.12*b-c+9,a+b-Bk(ii)); 
    a1(ii)=double(abc.a);
    b1(ii)=double(abc.b); 
    c1(ii)=double(abc.c); 
end
Time4=toc;
fprintf('Computation time with SOLVE:     %3.3f  \n', Time4)
