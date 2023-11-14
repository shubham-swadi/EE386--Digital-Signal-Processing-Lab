% Problem 1
% Subproblem 1

syms y(n) z R0  % define system and variables
assume(n>=0 & in(n,"integer"))
f = y(n) - R0*y(n-1) - kroneckerDelta(n); % define eqn
fZT = ztrans(f,n,z); % take z transform
syms yZT
fZT = subs(fZT,ztrans(y(n),n,z),yZT); % substitute yzt transform in terms of ztransform
yZT = solve(fZT,yZT); % write in terms of Z
ySolz = subs(yZT,[y(-1)], [0]);
r0 = 1.15;
b = -1;
a = [-1, r0];
zplane(b,a) % Pole zero plot

ySol = iztrans(yZT,z,n); % take inverse z transform
ySol = simplify(ySol); % simplify
ySol = subs(ySol,[y(-1)],[0]) % put intial conditions

ySol1 = subs(ySol,[y(-1) R0],[0 2.5]) % put intial conditions
nValues = 1:16;
ySolValues = subs(ySol1,n,nValues);
ySolValues = double(ySolValues);
ySolValues = real(ySolValues);
stem(nValues, ySolValues,"b")
title("No. of people infected per day")
ylabel("People infected")
xlabel("No. of days")
grid on
figure;
ySolValues(15)
ySolValues(16)
% ansr is 16 days