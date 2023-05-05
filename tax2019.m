function [moneyGet, incomeTax, totalTax] = tax2019(salary, deduction, SocialInsurance)
incomeTax = zeros(1, 12);
moneyGet = zeros(1, 12);
assert(length(salary) == length(deduction), '��н��ĿӦ����ר��۳���Ŀ��Ŀһ�£�');
tax = zeros(1,13);
for ii = 1:length(salary)
disp(['���һ���˵�' num2str(ii) '���µ���н��' num2str(salary(ii)), 'Ԫ����ר��۳�Ϊ' num2str(deduction(ii)), 'Ԫ����ô']);
tax(ii + 1) = salary2019(salary, ii, deduction, SocialInsurance);
incomeTax(ii) = tax(ii + 1) - tax(ii);
moneyGet(ii) = salary(ii) - SocialInsurance(ii) - incomeTax(ii);
disp(['��' num2str(ii) '����Ӧ�ɸ�˰Ϊ' num2str(incomeTax(ii)) 'Ԫ.']);
end
disp(['���ܸ�˰��Ϊ' num2str(tax(13)) 'Ԫ.']);
bar(incomeTax);
grid on;
ylabel('Ԫ');
xlabel('�·�');
title(['Hyowinner��SimulinkѧУ:https://hyo.ke.qq.com/' char(10) '��ȺϼƸ�˰:' num2str(tax(13)) 'Ԫ']);
totalTax = tax(13);