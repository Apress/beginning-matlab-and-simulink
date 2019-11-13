% Num50Type.m - Defines entered integer type
clearvars; clc
N=input('Enter ANY integer up to 50:  ');
if N<=50
    fprintf('Your entry is: %d \n', N)  
    switch N
        case {2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50}
            fprintf('you have entered %g which is EVEN number \n', N)
        case {9,15,21,25,27,33,35,39,45,49}
            fprintf('You have entered %g which is ODD number but not prime\n', N)
        otherwise %N=[3,5,7,11,13,17,19,23,29,31,37,41,43,47]
            fprintf('You have entered %g which is PRIME number \n ', N)
    end
else
    disp('This code works with integers up to 50 to identify if they are even, odd or prime!')
end
