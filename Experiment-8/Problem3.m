% Problem 3
% Subproblem 1
ak = [0.1,  0.15, 0.25, 0.26, 0.34, 0.42, 0.25, 0.2, 0.15, 0.1, 0.1, 0.1];
b1 = 1;
b3 = 1;
rho =1;
a1 = [1, -1];
a3 = [1 (1-rho)*ak];
sys4 = tf(b3,a3,1,"Variable" ,"z^-1");
N2 = 1:100;
syms m
m = sym(1);
sol = kroneckerDelta(N2,m);
var = double(sol);
sys5 = filter( b3, a3, var);
stem(N2,sys5)
title("No. of people infected per day ")
ylabel("Number of people infected")
xlabel("No. of days")
figure;
I3 = filter(b1,a1,sys5);
stem(I3)
title("Total number of people infected")
ylabel("Number of people infected")
xlabel("No. of Days")
figure;
Total_infected_people_3 = I3(end)

% Subproblem 2
ak = [0.1, 0.15, 0.25, 0.26, 0.34, 0.42, 0.25, 0.2, 0.15, 0.1, 0.1, 0.1];
b4 = 1;
rho1 = [0.25 0.5 0.75];
N2 = 1:100;

for i = rho1
    a4 = [1 -(1-i)*ak];
    zplane(b4, a4);
    title("Pole-zero plot")
    figure;
    sys6 = tf(b4,a4,1,"Variable" ,"z^-1"); % defines transfer function
    sys7 = filter( b4, a4, var);
    stem(N2,sys7)
    title("No. of people infected per day (rho = "+i+" )")
    ylabel("Number of people infected")
    xlabel("No. of days")
    figure;
    I4 = filter(b1,a1,sys7);
    stem(I4)
    title("Total number of people infected (rho = "+i+" )")
    ylabel("Number of people infected")
    xlabel("No. of Days")
    figure;
    Total_infected_people_4 = I4(end)
end
