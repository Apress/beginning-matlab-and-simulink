function [x1, x2, D]=Quad_Var(varargin)
% Quad_Var.m computes roots of the quadratic equation with varying number of
% of input arguments for a, b, c. Gives three output variables: x1, x2, D.
% There are four cases considered:
% Case 1. No Input arguments: a =1; b=2; c=3; values are taken as inputs.
% Case 2. One Input argument given: a, and b=2, c=3 are taken as inputs.
% Case 3. Two Input arguments given: a and b, c=3 is taken as a 3rd input
% Case 4. Three Input arguments given: a, b and c.
% E.g.
% Run: [x1, x2, D] = Quad_Var();        % No Input
% Run: [x1, x2, D] = Quad_Var(1);       % One Input: a=1;
% Run: [x1, x2, D] = Quad_Var(1, 2);    % Two Inputs: a=1; b=2;
% Run: [x1, x2, D] = Quad_Var(1, 2, 3); % Three Inputs: a=1; b=2; c=3;

if nargin==0         % Case 1. No input arguments
    a=1; b=2; c=3;
elseif nargin==1     % Case 2. One input argument only
    a=varargin{1}; b=2; c=3;
elseif nargin==2     % Case 3. Two input arguments
    a=varargin{1}; b=varargin{2}; c=3;
else                 % Case 4. Three input arguments
    a=varargin{1}; b=varargin{2}; c=varargin{3};
end
D=b^2-4*a*c; x1=(-b+sqrt(D))/(2*a); x2=(-b-sqrt(D))/(2*a);
end
