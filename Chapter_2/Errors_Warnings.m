%% Warning on missing arguments
A = 3; B = 4;
C = B^2; D = {A, B, C};
F = struct('Ba', B, 'Ca', C, 'Dc', D);
G = [B, C];
fprintf('Generated variables are:  %2d ')


% %% Warning on unnecessary brackets
% a = [13]; b = [a, 2];
% for ii = 1:100
%     
