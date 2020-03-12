 syms  Q1 Q2 Q3 Q4 Q5 Q6 ...
    d1 d4 d6 a1 a2 a3
      

T0_1=[cos(Q1)  -sin(Q1) 0   50 
        0         0    -1  -815 
      sin(Q1)   cos(Q1) 0    0  
        0         0     0    1]
   
T1_2=[cos(Q2)  -sin(Q2) 0   850 
      sin(Q2)   cos(Q2) 0    0 
        0         0     1    0  
        0         0     0    1]
   
T2_3=[cos(Q3)  -sin(Q3) 0   145
        0         0    -1    0
      sin(Q3)   cos(Q3) 0    0   
        0         0     0    1]
   
T3_4=[cos(Q4)  -sin(Q4) 0    0 
        0         0     1    820
      -sin(Q4) -cos(Q4) 0    0
        0         0     0    1]
    
T4_5=[cos(Q5)  -sin(Q5) 0    0 
        0         0    -1    0 
      sin(Q5) cos(Q5)   0    0 
        0         0     0    1]
   
T5_6=[cos(Q6)  -sin(Q6) 0    0 
      sin(Q6)   cos(Q6) 0    0 
       0          0     1    0  
       0          0     0    1] 
   
   
   
TR_H=T0_1*T1_2*T2_3*T3_4*T4_5*T5_6
 TR_H(:,end)
  jacobian(TR_H(:,end),[Q1; Q2; Q3; Q4; Q5; Q6])
  