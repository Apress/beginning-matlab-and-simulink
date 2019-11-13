% ChessInventorReward.m
% Example: Grains of Wheat on the Chess Board
%% Version A. [while … end] loop
clearvars
S=1; Ncell=64; jj=1;
while jj~=Ncell
        S=S+2^jj; jj=jj+1;
end
display(['Number of cells: ', num2str(Ncell)]) 
display('& total sum of grains is: '), disp(uint64(S)) 
% Now test our results with a simple solution: 2^64-1;
Error=S-2^64 %#ok
%% Version B. [for … end] loop
clearvars
S=0; Ncell=64;
for ii=0:Ncell-1
        S=S+2^ii;
end
display(['Number of cells: ', num2str(Ncell)]) 
display('& total sum of grains is: '), disp(uint64(S)) 
% Now test our results with a simple solution: 2^64-1;
Error=S-2^64 %#ok
