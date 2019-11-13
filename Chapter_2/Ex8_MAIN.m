function [Output1,Output2, Output3] = Ex8_MAIN(In1,In2, In3)
% Ex8_MAIN.m generates three square matrices within three nested functions
%   Input arguments: In1, In2, In3 are integers defining the size of the
%   output matrices.
%   Nest1 generates the square matrix of Pascal
%   Nest2 generates the square matrix of Cauchy
%   Nest3 generates the square matrix of Krylov
disp(['This is ' num2str(In1)  '-by-' num2str(In1) ' Pascal matrix'])
Output1 = Nest1; disp(Output1)
disp(['This is ' num2str(In2)  '-by-' num2str(In2) ' Cauchy matrix'])
Output2 = Nest2; disp(Output2)
disp(['This is ' num2str(In3)  '-by-' num2str(In3) ' Krylov matrix'])
Output3 = Nest3; disp(Output3)

    function Out1=Nest1()
%   Nest1 generates the square matrix of Pascal
        Out1 = pascal(In1);
    end
    function Out2=Nest2()
%   Nest2 generates the square matrix of Cauchy
        Out2 = gallery('cauchy',In2);
    end
    function Out3=Nest3()
%   Nest3 generates the square matrix of Krylov
        Out3 = gallery('krylov',In3);
    end    
end
