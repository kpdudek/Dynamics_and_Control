syms g1 g2 q1 q2 y

eqns = [g1 == q1, g2 == q2, y == g1/g2];

solve(eqns,y)