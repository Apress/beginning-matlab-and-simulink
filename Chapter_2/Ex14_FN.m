% Ex14_FN.m
%% Ver 1. Computation of 13 elements of the Fibonacci Numbers: [for ... end]
clearvars
f(1) = 1; f(2)=1;
f = [f(1), f(2), zeros(1, 11)]; % Memory allocation

fprintf('Element: %.0f  FN: %.0f \n', 1, f(1));
fprintf('Element: %.0f  FN: %.0f \n', 2, f(2));
for jj=3:13
    f(jj)=f(jj-2)+f(jj-1);
    fprintf('Element: %.0f  FN: %.0f \n', jj, f(jj));
end
%% Ver 2. Computation of 13 elements of the Fibonacci Numbers: [while...end]
clearvars
f(1) = 1; f(2)=1; jj=3;
f = [f(1), f(2), zeros(1, 11)]; % Memory allocation

fprintf('Element: %.0f  FN: %.0f \n', 1, f(1));
fprintf('Element: %.0f  FN: %.0f \n', 2, f(2));
while jj<=13
    f(jj)=f(jj-2)+f(jj-1);
    fprintf('Element: %.0f  FN: %.0f \n', jj, f(jj));
    jj=jj+1;
end
%% [BREAK]. Iteration of the Fibonacci Numbers is controlled by [BREAK]
clearvars
F(1) = 1; F(2) = 1; 
F = [F(1), F(2), zeros(1, 40)]; % Memory allocation

fprintf('Element: %.0f  FN: %.0f \n', 1, F(1));
fprintf('Element: %.0f  FN: %.0f \n', 2, F(2));
for ii=3:111
    F(ii)=F(ii-2)+F(ii-1); 
    fprintf('Element: %.0f  FN: %.0f \n', ii, F(ii));
    if F(ii)>=123456789
    fprintf('Iteration is halted because \n ') 
    fprintf('the last computed value is greater than 123456789 \n')
    break
    else
        continue
    end
end
