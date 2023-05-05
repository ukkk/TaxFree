function tax = salary2019(salary, monthNum, deduction, SocialInsurance)
if length(salary) == 1 && length(deduction) == 1 && length(SocialInsurance) == 1
    cumTaxBase = salary * monthNum - (5000 * monthNum) - deduction - SocialInsurance;
elseif length(salary) > 1 && length(deduction) > 1 && length(SocialInsurance) > 1
    cumTaxBase = sum(salary(1:monthNum)) - (5000 * monthNum) - sum(deduction(1:monthNum)) - sum(SocialInsurance(1:monthNum));
else
    error('Unexpected input! salary and deduction should be the same type.');
end
table = [0 0.03 0; 36000 0.1 2520; 144000 0.2 16920;300000 0.25 31920; 420000 0.3 52920; 600000 0.35 85920; 960000 0.45 181920; inf inf inf];
[h, ~] = size(table);
cnt = 1;
for ii = 1:h
    if cumTaxBase - table(ii + 1, 1) > 0
        cnt = cnt + 1;
    else
        break;
    end
end
tax = cumTaxBase  * table(cnt, 2) - table(cnt, 3);
end