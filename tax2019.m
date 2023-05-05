function [moneyGet, incomeTax, totalTax] = tax2019(salary, deduction, SocialInsurance)
incomeTax = zeros(1, 12);
moneyGet = zeros(1, 12);
assert(length(salary) == length(deduction), '月薪条目应该与专项扣除条目数目一致！');
tax = zeros(1,13);
for ii = 1:length(salary)
disp(['如果一个人第' num2str(ii) '个月的月薪是' num2str(salary(ii)), '元，月专项扣除为' num2str(deduction(ii)), '元，那么']);
tax(ii + 1) = salary2019(salary, ii, deduction, SocialInsurance);
incomeTax(ii) = tax(ii + 1) - tax(ii);
moneyGet(ii) = salary(ii) - SocialInsurance(ii) - incomeTax(ii);
disp(['第' num2str(ii) '个月应缴个税为' num2str(incomeTax(ii)) '元.']);
end
disp(['年总个税收为' num2str(tax(13)) '元.']);
bar(incomeTax);
grid on;
ylabel('元');
xlabel('月份');
title(['Hyowinner的Simulink学校:https://hyo.ke.qq.com/' char(10) '年度合计个税:' num2str(tax(13)) '元']);
totalTax = tax(13);