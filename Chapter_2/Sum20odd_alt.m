% Sum20odd_alt.m sums odd numbers within 0...20 with [for … end] loop
clearvars;
S=0;
for N=1:2:20
    S=S+N;
end
fprintf('Sum of all odd numbers 1 to 20 is equal to %g \n', S)
% Sum of odd numbers within 0...20 with [while … end] loop
clearvars;
S=0; jj=1;
while le(jj,20)
    S=S+jj; jj=jj+2;
end
fprintf('Sum of all odd numbers 1 to 20 is equal to %g \n', S)
