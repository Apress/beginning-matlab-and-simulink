% Quad_Eq2.m
% Solve quadratic equations based on coefficients of: a, b, & c
a=input('Enter value of a: ');
b=input('Enter value of b: ');
c=input('Enter value of c: ');
fprintf('Solve: (%3g)x^2+(%3g)x+(%3g)=0\n', a,b,c)
D=b^2-4*a*c;
% Roots
x1=(-b+sqrt(D))/(2*a); x2=(-b-sqrt(D))/(2*a);
if lt(D,0)
disp('This equation does not have real value roots!');
Dm=sprintf('Because discriminant is negative. D = %g', D); disp(Dm)
fid1=fopen('Results_QE.txt', 'w');
fprintf(fid1, 'This equation does not have real value \n');
fprintf(fid1, 'roots!\n');
fprintf(fid1,'Because discriminant is negative. D = %g\n', D);
fprintf(fid1,'Complex Root1: x1= %10s\n', num2str(x1));
fprintf(fid1,'Complex Root2; x2= %10s\n', num2str(x2));
fclose(fid1); open('Results_QE.txt');
elseif eq(D,0)
disp('This equation has one unique root! ');
disp('Because discriminant is zero: D = 0 ');
fid1=fopen('Results_QE.txt', 'w');
fprintf('This equation has one unique root! \n');
fprintf(fid1,'Because discriminant is zero: D = 0 \n');
fprintf(fid1,'Unique Root: x = %g \n', x1);
fclose(fid1); open('Results_QE.txt');
else
    disp('This equation has two roots! ');
    Dm =sprintf('Because discriminant is: D = %g ', D); disp(Dm);
    fid1=fopen('Results_QE.txt', 'w');
    fprintf(fid1,'This equation has two roots \n');
    fprintf(fid1,'Because discriminant is: D = %g \n', D);
    fprintf(fid1,'Real Root1 is: x1= %g \n', x1);
    fprintf(fid1,'Real Root2 is: x2= %g \n', x2);
    fclose(fid1); open('Results_QE.txt');
end
