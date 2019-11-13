% TimeDisp.m  Time Display
display(clock);
NOW=fix(clock);% Round to nearest integers
fprintf('This year is: %g \n', NOW(1));
if NOW(2)==1
    display(['Date is January ' num2str(NOW(2))]);
elseif NOW(2)==2
    display(['Date is February ' num2str(NOW(2))]);
elseif NOW(2)==3
    display(['Date is March ' num2str(NOW(2))]);
elseif NOW(2)==4
    display(['Date is April ' num2str(NOW(2))]);
elseif NOW(2)==5
    display(['Date is May ' num2str(NOW(2))]);
elseif eq(NOW(2),6)
    display(['Date is June ' num2str(NOW(2))]);
elseif eq(NOW(2),7)            % No difference between eq() and ==
    display(['Date is July ' num2str(NOW(2))]);
elseif eq(NOW(2),8)
    display(['Date is August ' num2str(NOW(2))]);
elseif eq(NOW(2),9)
    display(['Date is September ' num2str(NOW(2))]);
elseif eq(NOW(2),10)
    display(['Date is October ' num2str(NOW(2))]);
elseif eq(NOW(2),11)
    display(['Date is November ' num2str(NOW(2))]);
else
    display(['Date is December ' num2str(NOW(2))]);
end
if NOW(4)>=12
fprintf('Current time:  %g PM - %g min - %g sec\n', ...
        NOW(4), NOW(5), NOW(6))
else
fprintf('Current time:  %g AM - %g min - %g sec\n', ...
        NOW(4), NOW(5), NOW(6))
end
