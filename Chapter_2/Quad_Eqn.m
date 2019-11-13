% Quad_Eqn.m solves quadratic equations based on the user entries for:
% a, b, c
clearvars; clc
SIZE_chk = 0;
while SIZE_chk ~=1
    disp('Solution of: ax^2+bx+c=0')
    abc=input('Enter values as [a, b, c]:   ');
    SIZE_abc=numel(abc);
    if SIZE_abc ==3
        SIZE_chk=1;
        a=abc(1); 
        b=abc(2); 
        c=abc(3); 
        CorrectEntry=0;
        while CorrectEntry~=1
            if SIZE_abc == 3
                CorrectEntry=1; CorrectABC=0;
                % Check the order of a, b, c
                while CorrectABC~=1
                    disp('Is this the equation you"d like to find roots?')
                    disp('   ')
                    Eqn=sprintf(' %g*x^2+(%g)*x + (%g)=0', a, b, c);
                    disp('   ')
                    disp(Eqn);
            CorrectABC=input('If yes, enter 1, otherwise any integer!  ');
                    disp('   ')
                    if CorrectABC~=1
                        abc=input('Enter values as [a, b, c]:   ');
                        a=abc(1); b=abc(2); c=abc(3);
                    end
                end
                D=b^2-4*a*c;
                % Roots
                x1=(-b+sqrt(D))/(2*a); x2=(-b-sqrt(D))/(2*a);
                if lt(D,0)
                    disp('The equation has no real roots!');
                    Dm=sprintf('Because discriminant <0. D = %g', D); 
                    disp(Dm)
                    % Display the results
                    fprintf(' %g*x^2+(%g)*x + (%g)=0\n', a, b, c);
                    fprintf('It does not have real roots!\n');
                    fprintf('Because its discriminant <0. D=%g\n',D);
fprintf('Complex Roots are: x1=%10s; x2=%10s\n', num2str(x1),num2str(x2));
                elseif eq(D,0)
                    disp('This equation has one unique root! ');
                    disp('Because discriminant is zero. D=0 ');
                    fprintf('%g*x^2+(%g)*x + (%g)=0\n', a, b, c);
                    fprintf('It has a unique root! \n');
                    fprintf('Because discriminant is "0". D=0 \n');
                    fprintf('Unique Root: x = %g \n', x1);
                else
                    disp('This equation has two real roots! ');
     [Dm, Errm2]=sprintf('Because discriminant >0. D = %g ', D); disp(Dm);
                    fprintf(' %g*x^2+(%g)*x + (%g)=0\n', a, b, c);
                    fprintf('It has two real roots \n');
                    fprintf('Because discriminant >0. D = %g\n', D);
     fprintf('Roots of the equation are x1= %g; x2= %g \n', x1, x2);
                end
            else
                CorrectEntry=0;
                disp(' a, b, c cannot have more than 1 element (value)');
                disp('Re-enter values of a, b, c');
                disp('    ')
                abc=input('Enter values as [a, b, c]:   ');
                a=abc(a); b=abc(2); c=abc(3);
                sa=numel(1); sb=numel(b); sc=numel(c);
            end
        end
    else
fprintf('Your entry is wrong \n') 
fprintf('Enter the correct entries for [a, b, c] as a row vector in [ ]: ')
    end
end
