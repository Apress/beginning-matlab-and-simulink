function varargout = VarInOut(varargin)
% VarInOut.m works with a varying number of inputs and output variables.
% Examples: 
% In1=3; [Out] = VarInOut(In1) % One output for one input argument
% In1=2; In2=3;[Out1, Out2]=VarInOut(In1, In2) % Two outputs for two inputs

% Check number of output variables
Min_outs = 0; Max_outs = 2;

if nargout>Max_outs
fprintf('%3g outputs requested that is more than set Outputs!!! \n', nargout); 
end
% Generate and display Output variables w.r.t the user specified Input 
if nargin == 0 && nargout ==0
    disp('No Input Arguments Are Given. Thus, No Outputs!')
elseif nargin==0 && nargout<=1
    disp('No Input Arguments Are Given. Thus, No Outputs!') 
elseif nargin == 1 && nargout == 1
    varargout{1}=magic(varargin{1});
elseif nargin == 1 && nargout == 0
    disp('No Output requested, but one matrix is displayed.')
    disp(magic(varargin{1}));
elseif nargin == 1 && nargout > 1
    disp(['Requested ' num2str(nargout) ' outputs are more than input!'])
    varargout{1}=magic(varargin{1});
elseif nargin == 2 && nargout == 2
    varargout{1}=magic(varargin{1});
    varargout{2}=magic(varargin{2});
elseif nargin == 2 && nargout>2
    disp(['Requested ' num2str(nargout) ' outputs are beyond the limits!'])
    varargout{1}=magic(varargin{1});
    varargout{2}=magic(varargin{2});
elseif nargin > 2 && nargout == 2
    disp(['Entered ' num2str(nargin) ' inputs are beyond the limits!'])
    disp('Two Output matrices are generated but more Inputs are entered!')
    disp('Thus, first two inputs are taken and the rest ignored!')
    varargout{1}=magic(varargin{1});
    varargout{2}=magic(varargin{2});
else
disp(['Requested ' num2str(nargout) ' Outputs that is beyond the limits'])
disp(['Requested ' num2str(nargin) ' Inputs that is beyond the limits'])
varargout{1}=magic(varargin{1});
varargout{2}=magic(varargin{2});
end
end