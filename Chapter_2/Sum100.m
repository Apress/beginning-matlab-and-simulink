% Sum100.m sums of all odd numbers with while
Sum=0; N=1;
while ne(N, 100)
if ne(mod(N,2),0) % Verifies all odd numbers are added.
    Sum=Sum + N;
end
    N=N+1;
end
disp(['Sum of all odd numbers 1...100 is:  ', num2str(Sum)]);
