%% ET5.m
% Task 5. Execute all M/MLX files (ET1.mlx, ET2.m, ET3.m, ET4.mlx) 
% and save the results
clearvars; close all
% Step 1. Call and execute the MLX file called: ET1.mlx
run('ET1.mlx');
% Collect all computation results
A1 = [alpha'; F'; beta'; H'; S'];

% Step 2. Call and execute the M file called: ET2.m
run('ET2.m');
Btab2 = table(t',g','variablenames', {'t', 'g'});

% Step 3. Call and execute the M-file called: ET3.m
run('ET3.m');
Ccell3{1,1} = t; Ccell3{1,2} = f;

% Step 4. Call and execute the MLX-file called: ET4.m
run('ET4.mlx');
Dstruct4.In = s; Dstruct4.Fun = T; Dstruct4.delta = delta; 
Dstruct4.omega=omegaN;
whos  % Show all of the computed outcomes in the command window