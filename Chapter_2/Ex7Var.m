function [f1, f2, f3, f4, t, t1, t2, t3, t4, varargout] = Ex7Var(varargin)
% HELP: Ex7Var.m is a function file to compute a complex function whose
% computation function components differ w.r.t the values of t
% It may have no, one, two, three, or four input arguments for t
% [f1, f2, f3, f4, t] = Ex7Var(t1, t2, t3, t4)
% [f1, f2, f3, f4, t, t1, t2, t3, t4]=Ex7Var(linspace(-20, 6, 10000));
if eq(nargin,0)  % No input argument
t1 = -20:.001:-13; t2=-12.999:.001:-3; t3=-2.999:.001:3; t4 = 3.001:1e-3:6;
t = [t1,t2, t3, t4];
f1=exp(sin(2*t1))+exp(cos(100*t1)); f2=cos(2*t2)+sin(100*t2);
f3=exp(sin(100*t3))+exp(cos(2*t3))+sin(100*t3)+cos(2*t3); f4=ones(size(t4));
elseif eq(nargin,1)&&min(varargin{1})<=-13&&max(varargin{1})>=6 % One Input
    t = varargin{1};
    for ii=1:numel(t)
        if le(t(ii),-13)
            t1(ii)=t(ii); 
        elseif gt(t(ii),-13) && le(t(ii),-3)
            t2(ii)=t(ii);
        elseif gt(t(ii),-3) && le(t(ii),3)
            t3(ii)=t(ii);
        else
            t4(ii)=t(ii);
        end
    end
                      f1=exp(sin(2*t1))+exp(cos(100*t1));
  t2=t2(find(t2~=0)); f2=cos(2*t2)+sin(100*t2);
  t3=t3(find(t3~=0));f3=exp(sin(100*t3))+exp(cos(t3))+sin(100*t3)+cos(2*t3);
  t4=t4(find(t4~=0)); f4=ones(size(t4));
elseif gt(nargin,1) && lt(nargin,4) % Two or Three Inputs 
    warndlg('t series need to be in four separate ranges or one united !!!')
    warndlg('Your entries are ignored and example data taken instead!!!')
    t1=-20:.001:-13; t2=-13.001:.001:-3; t3=-3.001:.001:3; t4=3.001:1e-3:6;
    t = [t1,t2, t3, t4];
    f1=exp(sin(2*t1))+exp(cos(100*t1)); f2=cos(2*t2)+sin(100*t2);
    f3=exp(sin(100*t3))+exp(cos(2*t3))+sin(100*t3)+cos(2*t3);   f4=ones(size(t4));
elseif eq(nargin, 4)               % Four Inputs  
    t1 = varargin{1}; t2=varargin{2}; t3=varargin{3}; t4 = varargin{4};
    t = [t1,t2, t3, t4];
    f1=exp(sin(2*t1))+exp(cos(100*t1)); f2=cos(2*t2)+sin(100*t2);
    f3=exp(sin(100*t3))+exp(cos(2*t3))+sin(100*t3)+cos(2*t3); f4=ones(size(t4));
else                               % More than Four Inputs  
warndlg('Check your entries: input arguments for [t] or [t1, t2, t3, t4]')
    warndlg('Your entries are ignored and default data taken instead!!!')
    t1=-20:.001:-13;t2=-12.999:.001:-3; t3=-2.999:.001:3; t4 = 3.001:1e-3:6;
    t = [t1,t2, t3, t4];
    f1=exp(sin(2*t1))+exp(cos(100*t1)); f2=cos(2*t2)+sin(100*t2);
    f3=exp(sin(100*t3))+exp(cos(2*t3))+sin(100*t3)+cos(2*t3);    f4=ones(size(t4));
end
plot(t1, f1, 'r', t2, f2, 'b', t3, f3, 'm',t4, f4, 'go--'), grid on; shg, legend('toggle')

% Set number of output variables is verified
MIN_outs = 0; MAX_outs=9;
if nargout>MAX_outs
fprintf('Asked %3g outputs that are more than set outputs!!! \n', nargout);
 warndlg('This fucntion file is assigned to have max. of 9 outputs!!!')
 fprintf('Asked %3g outputs are beyond the set outputs !!! \n', nargout);
end
 
% NARGOUTCHK; Checks and prompts error if the number of outputs requested 
% by the user is beyond 9!
% nargoutchk(MIN_outs, MAX_outs) % Can be also employed

end
