% Sum20odd.m sums odd numbers within 0...20 with for loop
clearvars;
S=0;
for N=1:20
if rem(N,2)==0 % Verifies if the number is even, then no sum.
        S=S;
else           % All odd numbers are added:
        S=S+N;
end
end
fprintf('Sum of all odd numbers 1 to %g is equal to %g \n', N, S)
