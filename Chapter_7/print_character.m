% print_character.m
% Part 1.
Start = 97;
for ii = 1:5
    for jj = 1:ii
        fprintf(char(Start));
        Start = Start+1;
    end
    fprintf('\n')
end
%% Part 2. Upper cases
Start = 65; 
for ii = 1:2:9
    for jj = 1:ii
        fprintf(char(Start));
        Start = Start+1;
    end
    fprintf('\n')
end
