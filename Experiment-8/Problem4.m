% Part(1)
Ro = 1.15;
K = 10^6;
n = 1:101;

logistic = (K./(1+(K*(Ro-1) - Ro)*Ro.^(-n-1))) - (1/(Ro-1));
Integrator3 = filter(1,[1 -1],logistic);
Total_infections2 = Integrator3(end) % Total infections in 100 days

figure;
plot(n,logistic)
title("New Daily Infections (Logistic curve)")
xlabel("Days (n)")
ylabel("Infected people y[n]")
grid on


% Part(2)
filter_1 = filter([1 -1],1,logistic); % First derivative
filter_2 = filter([1 -2 1],1,logistic); % Second derivative 

Global_maximum = max(filter_1) % Global max value
Value_n = n(filter_1 == max(filter_1)) % Days corresponding to max value
Zero_crossing = n(round(filter_2) == 94) % Inflection point

figure;
plot(n,filter_1)
title("First derivative")
xlabel("Days (n)")
ylabel("Infected people y[n]")
grid on

figure;
plot(n,filter_2,n(Zero_crossing),filter_2(Zero_crossing),'r*')
title("Second derivative ")
xlabel("Days (n)")
ylabel("Infected people y[n]")
grid on