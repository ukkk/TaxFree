salary = ones(1,12) * 23000;
deduction = ones(1,12) * 00;
SocialInsurance = ones(1, 12) * 3500;

[~, ~, incomeTax1] = tax2019(salary, deduction, SocialInsurance);


% 
salary = ones(1,12) * 10000;
deduction = ones(1,12) * 1000;
SocialInsurance = ones(1, 12) * 1200;

[~, ~, incomeTax2] = tax2019(salary, deduction, SocialInsurance);

totalTax = incomeTax1 + incomeTax2;