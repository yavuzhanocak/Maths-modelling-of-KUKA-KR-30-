%% Ters kinematik
syms Q1 Q2 Q3 Q4 Q5 Q6  ...
    r11 r12 r13 r21 r22 r23 r31 r32 r33;
px = 0;
py = 0;
pz = 0;

T1_6 = T1_2*T2_3*T3_4*T4_5*T5_6
T1_6 = simplify(T1_6)
T2_6 = T2_3*T3_4*T4_5*T5_6
T2_6 = simplify(T2_6)
T0_6s = [ r11 r12 r13 px;   r21 r22 r23 py; ...
          r31 r32 r33 pz;   0 0 0 1];
T_eqv1 = inv(T0_1)*T0_6s
T_eqv2 = inv(T1_2)*T_eqv1


eqv1 = simplify(T1_6(1,4)-T_eqv1(1,4))
eqv2 = simplify(T1_6(2,4)-T_eqv1(2,4))
eqv3 = simplify(T1_6(3,4)-T_eqv1(3,4))
eqv4 = simplify(T2_6(1,4)-T_eqv2(1,4))
eqv5 = simplify(T2_6(2,4)-T_eqv2(2,4))
eqv6 = simplify(T2_6(3,4)-T_eqv2(3,4))

Q3=(solve(eqv6,Q3))
eqv11= subs(eqv1,{'Q3'},{Q3})
eqv22= subs(eqv2,{'Q3'},{Q3})
[Q1, Q2] = solve(eqv22, Q1, Q2)
Q1=double(abs(Q1)*180/pi)
Q2=double(abs(Q2)*180/pi)
Q3=double(abs(Q3)*180/pi)

alfa=0;
beta=0;
gama=0;
RX_Z=[ cos(alfa)*cos(beta) cos(alfa)*sin(beta)*sin(gama)-sin(alfa)*cos(gama) cos(alfa)*sin(beta)*cos(gama)+sin(alfa)*sin(gama); ...
       sin(alfa)*cos(beta) sin(alfa)*sin(beta)*sin(gama)+cos(alfa)*cos(gama) sin(alfa)*sin(beta)*cos(gama)-cos(alfa)*sin(gama); ...
       -sin(beta) cos(beta)*sin(gama) cos(beta)*cos(gama)]
 
R0_6 =T4_5(1:3,1:3)*T5_6(1:3,1:3)
R0_4=T0_1(1:3,1:3)*T1_2(1:3,1:3)*T2_3(1:3,1:3)*T3_4(1:3,1:3)
R1_6 = simplify(R0_6)
R_eqv4=inv(R0_4)*RX_Z
R_eqv4=simplify(R_eqv4)

R_eqv1 = simplify(R1_6(1,3)-R_eqv4(1,3))
 R_eqv2 = simplify(R1_6(1,2)-R_eqv4(1,2))
 R_eqv3 = simplify(R1_6(2,1)-R_eqv4(2,1))
% 
 Q4=angle(abs(solve(R_eqv1,Q4)))
% 
  R_eqv22= subs(R_eqv2,{'Q4'},{Q4})
 
% %
 [Q5, Q6] = solve(R_eqv22, Q5, Q6)
% Q4=(abs(Q4)*180/pi)
% Q5=(abs(Q5)*180/pi)
% Q6=(abs(Q6)*180/pi)
