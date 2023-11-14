ak = [0.1,  0.15, 0.25, 0.26, 0.34, 0.42, 0.25, 0.2, 0.15, 0.1, 0.1, 0.1]; %5 coeffs
b1 = 1;
b2 = 1;
a1 = [1, -1];
a2 = [1 -ak];
sys2 = tf(b2,a2,1,"Variable" ,"z^-1") % trasnfer function 
zplane(b2,a2)
N2 = 1:100;
syms m
m = sym(1);
sol = kroneckerDelta(N2,m);
var = double(sol);
sys3 = filter( b2, a2, var); % impulse response using kronecker delta
stem(N2,sys3)
title("Number of people infected per day")
ylabel("Number of people infected")
xlabel("No. of days")
figure;
I2 = filter(b1,a1,sys3); % intergrator filter
stem(I2)
title("Total number of people infected")
ylabel("Number of people infected")
xlabel("No. of Days")
figure;
Total_infected_people_2 = I2(end)

sys3(94)
sys3(95)
% it takes 95 days to reach 1 million