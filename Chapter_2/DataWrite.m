% DataWrite.m - Write computed data into an external file 
fid1=fopen('Results_QE.txt', 'w');
fprintf(fid1,'Discriminant of the equation is: %g\n', D)
fprintf(fid1,'Root1 of the equation is x1= %10s\n', num2str(x1))
fprintf(fid1,'Root2 of the equation is x2= %10s\n', num2str(x2))
fclose(fid1); open('Results_QE.txt') 
