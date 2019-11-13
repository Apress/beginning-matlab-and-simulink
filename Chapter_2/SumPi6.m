% SumPi6.m 
%% Example: sum(1/k^2)=pi^2/6
% Version A. [while…end] loop
clearvars
S=0; jj=1; k=input('Enter number of iterations to compute:  ');
while le(jj, k)
    S=S+1/jj^2; jj=jj+1;
end
display(['Number of cells: ', num2str(Ncell)]) 
disp('& total sum of grains is: '), disp(uint64(S)) 
Error = (pi^2/6)-S; display(Error)
% Example: sum(1/k^2)=pi^2/6
% Version B. [for … end] loop
clearvars –except k
S=0;
for jj=1:k
    S=S+1/jj^2;
end
display(['Number of cells: ', num2str(Ncell)]) 
disp('& total sum of grains is: '), disp(uint64(S)) 
Error = (pi^2/6)-S; display(Error)
