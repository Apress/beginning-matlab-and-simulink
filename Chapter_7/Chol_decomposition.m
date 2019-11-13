% Chol_decomposition.m
clearvars; clc
disp('Note your matrix must be square & positive definite!!!')
disp('NB: Positive means all determinants must be positive.')
disp('You can enter as matrix elements ')
disp('or define your matrix 1st, ')
disp('and then just enter your matrix name')
disp('      ')
A=input('Enter a given Matrix: ');
[rows, cols]=size(A);
for k=1:rows
    % Determinants are computed
    Det_A(k)=det(A(1:k, 1:k));
end
if rows==cols
  if Det_A>0
     if issparse(A)
            [R,p,S] = chol(A) %#ok
            [R,p,s] = chol(A,'vector');
            [L,p,s] = chol(A,'lower','vector');
else
            R = chol(A) %#ok % Upper triangular matrix R: R'*R=A
            L = chol(A,'lower') %#ok % Lower triangular matrix R. 
            [R,p] = chol(A);
% Verify:
Error_up  = A-R'*R;
Error_low = A-L*L';
disp('Error is with upper triangular matrix: ')
disp(Error_up)
disp('Error is with lower triangular matrix:')
disp(Error_low)
       end
else
warndlg('Sorry your matrix is not positive and definite!')
warndlg('Try again!!!')
run('Chol_decomposition')
    end
end
