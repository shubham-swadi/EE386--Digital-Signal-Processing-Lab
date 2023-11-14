ySol = iztrans(yZT,z,n); % take inverse z transform
ySol = simplify(ySol); % simplify
ySol = subs(ySol,[y(-1)],[0]) % put intial conditions