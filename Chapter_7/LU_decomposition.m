% LU_decomposition.m
A=input('Enter rectangular matrix: ');
if  issparse(A)
    Y = lu(A)            %#ok
    [L,U,P,Q] = lu(A)    %#ok
    disp('  oops more  ')
    [L,U,P,Q,R] = lu(A)  %#ok
    [L, U, P, Q, R] = lu(A,'vector') %#ok 
else
    [L,U] = lu(A)        %#ok
    [L,U,P] = lu(A)      %#ok 
    % Check evaluation results:
    ERROR=P*A-L*U        %#ok
    [L,U,P] = lu(A, 'vector')        %#ok 
end
