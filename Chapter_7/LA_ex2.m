%% Given 13-by-13 system of linear equations
clearvars; clc
A = magic(13);
B = randi([-169,169], 13,1); % Elements of B vary within [-169, 169] 
%% inv()  or pinv()     %% INVERSE matrix method 
x1a = inv(A)*B;
Err_INV = norm(A*x1a-B)/norm(B)     %#ok: ERROR checking 
x1b = pinv(A)*B;
Err_PINV = norm(A*x1b-B)/norm(B)     %#ok: ERROR checking 
%%  \     %% backslash 
x2  = A\B;
Err_BACKSLASH = norm(A*x2-B)/norm(B)    %#ok: ERROR checking 
%%  mldivide()          %% Left divide function 
x3 = mldivide(A, B);
Err_MLDIVIDE = norm(A*x3-B)/norm(B)   %#ok: ERROR checking 
%%  Using linsolve()    
x4 = linsolve(A, B);
Err_LINSOLVE = norm(A*x4-B)/norm(B)   %#ok: ERROR checking 
%%  Using lsqr()    
x5 = lsqr(A, B);
Err_LSQR = norm(A*x5-B)/norm(B)   %#ok: ERROR checking 
%%  Using lu()
[L, U, P] = lu(A); 
y = L\(P*B);
x6 = U\y;
Err_LU = norm(A*x6-B)/norm(B)   %#ok: ERROR checking 
%%  Using rref()
MA = [A, B];       
xyz = rref(MA);    
x7= xyz(:,end);
Err_RREF = norm(A*x7-B)/norm(B)   %#ok: ERROR checking 
%%  Using svd()
[U, S, V]= svd(A);
x8 = V*inv(S)*U'*B;
Err_SVD = norm(A*x8-B)/norm(B)   %#ok: ERROR checking 
%%  Using chol()
[U, L] = chol(A);      
x9 = U\(U'\B);      
Err_CHOL = norm(A*x9-B)/norm(B)   %#ok: ERROR checking 
%%  Using qr()
[Q, R] = qr(A);
x10  = R\Q.'*B; 
Err_QR = norm(A*x10-B)/norm(B)   %#ok: ERROR checking 
%%  Using decomposition()
x11 = decomposition(A)\B;
Err_DECOMPOSITION = norm(A*x11-B)/norm(B) %#ok: ERROR checking
%%  Using bicg()
x12 = bicg(A,B);
Err_BICG = norm(A*x12-B)/norm(B)   %#ok: ERROR checking
%%  solve()            %% SOLVE() symbolic math method 
x = sym('x', [1, 13]); x=x';
Eqn = A*(x); Eqn = Eqn - B;
Solution = solve(Eqn); SOLs = struct2array(Solution);
SOLs = double(SOLs); x13 = SOLs';
Err_SOLVE = norm(A*x13-B)/norm(B)   %#ok: ERROR checking
