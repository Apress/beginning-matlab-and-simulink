function F = ERR(varargin)
% HELP. ERR.m simulates how to employ ERROR dialog box
warndlg('Note that this is a varargin function file ');
if nargin == 0
 omega = 13; t = 0:pi/100:pi;F = exp(cos(omega*t)); plot(t, F, 'bo--'), shg
elseif nargin == 1 && numel(varargin{1})==1
omega=varargin{1}; t = 0:pi/100:pi;F = exp(cos(omega*t)); plot(t, F, 'bo--')
elseif nargin == 1 && numel(varargin{1})>1
 t = varargin{1}; omega=13;F = exp(cos(omega*t)); plot(t, F, 'bo--')
elseif nargin ==2 && numel(varargin{1})==1 
omega=varargin{1}; t =varargin{2};F = exp(cos(omega*t)); plot(t, F, 'bo--')
elseif nargin == 2 && numel(varargin{1})>1
omega=varargin{2}; t = varargin{1};F = exp(cos(omega*t)); plot(t, F, 'bo--')
else
errordlg(['Wrong Number of Inputs!' num2str(nargin) ' are too many INPUTs'])
 disp('No OUPUTS')
F=warndlg(['No OUTPUTS because ' num2str(nargin) ' are too many INPUTS']);
end
end
