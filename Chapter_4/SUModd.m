function SUModd(N)
%#codegen
Sum=0; 
ii=1;
while le(ii,N)
    if ne(mod(ii,2),0)
        Sum=Sum+ii;
    else
        Sum=Sum;
    end
    ii=ii+1;
end
Sum

