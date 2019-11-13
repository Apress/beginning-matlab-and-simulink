function [varargout] = Leibnitz_VarOut(varargin)  
% Leibnitz_VarOut.m computes and plot the Leibnitz series expansion of 
%         arctan(1) to find an approximation of PI. 
%         Input arguments: 
%         N (number of terms, e.g. 1000)
%         E_tol (Error tolerances, e.g. 0.001)
%         OUTPUT variables are: 
%         Out1 = Error; 
%         Out2 = SN (Sum of series); 
%         Out3 = Nhalt (terms when simulation is halted). 
if nargin==0
    N =1000; E_tol = 0.001;
elseif nargin<2
    E_tol = 0.001; 
    N = varargin{1};
else
    N = varargin{1}; E_tol=varargin{2};
end
SN=0;
for ii=0:N
    SN = SN+((-1)^ii)/(2*ii+1);
    Error=abs(pi/4-SN);
    if abs(Error)<=E_tol
        Nhalt=ii; 
        break
    else
        Nhalt=ii;
        continue
    end
end
if nargout == 0        % No Output specified: NO outputs
    disp('NO Outputs!')
elseif    nargout ==1  % One Output: Error
    varargout{1}=Error; 
elseif nargout ==2     % Two Outputs: Error and Sum of series 
    varargout{1}=Error; varargout{2}=SN; 
else      % Three Outputs: Error, Sum of Series, Number of Iterations 
    varargout{1}=Error; varargout{2}=SN;varargout{3}= Nhalt ; 
end
end