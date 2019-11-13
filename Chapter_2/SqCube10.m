% SqCube10.m computes square and cube of 2...10 
%%  [for  … end]
for k=2:2:10
    Square = k^2;
    Cube   = k^3;
    fprintf('Square of %g is %g \n', k, Square);
    fprintf('Cube of %g is %g \n'  , k, Cube);
end
%% Alternative way: [while … end]
jj =2;
while le(jj, 10)
     Square = jj^2;
    Cube   = jj^3;
    fprintf('Square of %g is %g \n', jj, Square);
    fprintf('Cube of %g is %g \n'  , jj, Cube);
    jj =jj+2;
end
